#!/bin/bash

declare -a SPACK_CHECKOUT_PACKAGES=("sbndaq-artdaq@v1_10_05" "sbndaq@v1_10_05")
declare -r SPACK_GCC_VERSION='12.1.0'
declare -r SPACK_QUALS='s=131'
declare -r SPACK_SBNENV='sbn-fd'

if [[ "${BASH_SOURCE[0]}" != "${0}" ]]; then
    echo "Error: This script should be executed, not sourced."
    return 1
fi

print_usage() {
    cat << EOF
Usage: $(basename "$0") [OPTIONS]

Sets up a Spack development area for SBND DAQ software development.
Creates a new directory with custom Spack environment, checks out specified
packages for development, and optionally builds them.

Options:
    --non-interactive     Run without user prompts (default: false)
    --dev-name NAME       Set developer name for directory naming (default: GAL)
    --default-version VER Set specific version instead of latest available
    --global-config       Use global Spack config instead of local
    --no-build            Skip package building step
    -h, /?, --help        Display this help message and exit

Environment Variables:
    SPACK_J             Number of build processes (default: nproc/2)
    SPACK_MICRO_ARCH    CPU microarchitecture (default: v2)

Examples:
    $(basename "$0") --dev-name JOHN --default-version v1_10_05
    $(basename "$0") --non-interactive --no-build
EOF
}

if [[ "$1" == "-h" || "$1" == "/?" || "$1" == "--help" ]]; then
    print_usage
    exit 0
fi

set -e

DEVNAME="XYZ"

declare -r SPACK_DAQ_AREAS="${HOME}/DAQ_SPACK_DevAreas"
declare -r CMDS_FILE="${SPACK_DAQ_AREAS}/spack_commands.txt"

declare -r SPACK_PACKAGES_TOP='/daq/software/spack_packages'

declare -r RED='\033[38;2;243;139;168m'
declare -r YELLOW='\033[38;2;249;226;175m'
declare -r BLUE='\033[38;2;137;180;250m'
declare -r GREEN='\033[38;2;166;227;161m'
declare -r RESET='\033[0m'

NON_INTERACTIVE=true
DEFAULT_VERSION=""
USE_LOCAL_CONFIGS=true
RUN_BUILD=true

CHECKSUM='PLACEHOLDER'
SCRIPT_PATH="$0"

log_info() { printf "${BLUE}[INFO]${RESET} %s\n" "$*" >&2; }
log_error() { printf "${RED}[ERROR]${RESET} %s\n" "$*" >&2; }
log_warn() { printf "${YELLOW}[WARN]${RESET} %s\n" "$*" >&2; }
log_command() {
    printf "${GREEN}[CMD]${RESET} %s\n" "$*" >&2
    echo "$*" >> "${CMDS_FILE}"
}

setup_signal_handlers() {
    trap 'handle_sigint' SIGINT
    trap 'handle_sigterm' SIGTERM
    trap 'handle_sigquit' SIGQUIT
    trap 'cleanup_on_exit' EXIT
    trap 'handle_error $? $LINENO $BASH_COMMAND' ERR
}

handle_sigint() {
    log_warn "Caught SIGINT (Ctrl+C)"
    cleanup_on_exit
    exit 130
}

handle_sigterm() {
    log_warn "Caught SIGTERM"
    cleanup_on_exit
    exit 143
}

handle_sigquit() {
    log_warn "Caught SIGQUIT"
    cleanup_on_exit
    exit 131
}

cleanup_on_exit() {
    log_info "Performing cleanup..."
    [[ -n ${SPACK_ENV} ]] && spack env deactivate 2>/dev/null || true
}

handle_error() {
    local exit_code=$1 line_no=$2 command=$3
    log_error "Error occurred:"
    log_error "Command: ${command}"
    log_error "Line number: ${line_no}"
    log_error "Exit code: ${exit_code}"
    cleanup_on_exit
    exit "${exit_code}"
}

parse_arguments() {
    while [[ $# -gt 0 ]]; do
        case $1 in
            --non-interactive) NON_INTERACTIVE=true; shift ;;
            --dev-name) DEVNAME="$2"; shift 2 ;;
            --default-version) DEFAULT_VERSION="$2"; shift 2 ;;
            --global-config) USE_LOCAL_CONFIGS=false; shift ;;
            --no-build) RUN_BUILD=false; shift ;;
            *) log_error "Unknown option: $1"; exit 1 ;;
        esac
    done
}

read_with_timeout() {
    local prompt="$1" default="$2" response
    [[ "${NON_INTERACTIVE}" = true ]] && { echo "${default}"; return; }
    if read -t 10 -p "${prompt}" response; then
        echo "${response:-$default}"
    else
        echo "${default}"
    fi
}

verify_self() {
    local actual_sum
    actual_sum=$(sed "s/^CHECKSUM=.*$/CHECKSUM='PLACEHOLDER'/" "$SCRIPT_PATH" | sha256sum | cut -d' ' -f1)
    
    if [[ "$CHECKSUM" == "PLACEHOLDER" ]]; then
        sed -i "s/^CHECKSUM=.*$/CHECKSUM='$actual_sum'/" "$SCRIPT_PATH"
        exit 0
    fi
    
    if [[ "$actual_sum" != "$CHECKSUM" ]]; then
        log_error "Error: Script has been modified" >&2
        exit 1
    fi
    log_info "Script verified successfully"
}

setup_spack_environment() {
    log_command "source ${SPACK_PACKAGES_TOP}/setup-env.sh"
    source ${SPACK_PACKAGES_TOP}/setup-env.sh || { log_error "Failed to source spack environment"; exit 1; }
    log_command "export SPACK_DISABLE_LOCAL_CONFIG=true"
    export SPACK_DISABLE_LOCAL_CONFIG=true
    export SPACK_MICRO_ARCH=${SPACK_MICRO_ARCH:-'v2'}
    export SPACK_OS=$(spack arch -o)
    export SPACK_J=${SPACK_J:-$(( $(nproc) / 2 ))}
    export SPACK_ARCH="linux-${SPACK_OS}-x86_64_${SPACK_MICRO_ARCH}"
    log_info "SPACK_ARCH: ${SPACK_ARCH}"
}

get_version() {
    local default_version
    if [[ -z "${DEFAULT_VERSION}" ]]; then
        log_command "spack find --no-groups sbndaq-suite ${SPACK_QUALS} %gcc@${SPACK_GCC_VERSION} arch=${SPACK_ARCH}"
        default_version=$( spack find --no-groups sbndaq-suite ${SPACK_QUALS} %gcc@${SPACK_GCC_VERSION} arch=${SPACK_ARCH} \
          | cut -d'@' -f2 |sort -ru | head -1 )
    else
        default_version="${DEFAULT_VERSION}"
    fi
    read_with_timeout "Enter version (default: ${default_version}): " "${default_version}"
}

create_config_files() {
    local dir_name="$1"
    mkdir -p "${dir_name}/spack/linux"
    mkdir -p "${dir_name}/srcs"

log_info "Generating upstreams.yaml file in ${dir_name}/spack/linux"
cat > "${dir_name}/spack/linux/upstreams.yaml" << EOF
upstreams:
  spack-instance-1:
    install_tree: ${SPACK_PACKAGES_TOP}
    modules:
      tcl: ${SPACK_PACKAGES_TOP}/modules
EOF

log_info "Generating config.yaml file in ${dir_name}/spack"
cat > "${dir_name}/spack/config.yaml" << EOF
config:
  install_tree:
    root: ${SPACK_DAQ_AREAS}/${dir_name}/daq/software/spack_packages
    padded_length: 128
EOF

log_info "Generating .clang-format file in ${dir_name}/srcs"
cat > "${dir_name}/srcs/.clang-format" << EOF
DisableFormat: true
EOF


local pkg_version=""
local pkg_hash=""
local tmp_version=""
local tmp_hash=""

while IFS= read -r line; do
    tmp_hash=$(echo "$line" | cut -d' ' -f1)
    tmp_version=$(echo "$line" | cut -d' ' -f2)
    if [[ -z "$pkg_version" ]]; then
        pkg_version="$tmp_version"
        pkg_hash="$tmp_hash"
    fi
    available_versions+=("$tmp_version")
    available_hashes+=("$tmp_hash")
done < <(spack find -l --no-groups sbndaq-suite arch=${SPACK_ARCH} | \
  sed 's/sbndaq-suite@//' | sort -r -k2 |head -6 )

echo
log_info "Select sbndaq-suite version for compile_flags.txt :"
for i in "${!available_versions[@]}"; do
    echo "$((i + 1)). ${available_versions[$i]} (${available_hashes[$i]})"
done
response=$(read_with_timeout "Choose a version (default: $pkg_version): " "$pkg_version")
echo
if [[ "$response" =~ ^[0-9]+$ ]]; then
    index=$((response - 1))
    if [[ "$index" -ge 0 && "$index" -lt "${#available_versions[@]}" ]]; then
        pkg_version="${available_versions[$index]}"
        pkg_hash="${available_hashes[$index]}"
    fi
elif [[ ! -z "$response" ]]; then
  log_info "Using default version: $pkg_version ($pkg_hash)"
fi

spack load sbndaq-suite@${pkg_version} /${pkg_hash} arch=${SPACK_ARCH}
spack load gcc@${SPACK_GCC_VERSION} arch=${SPACK_ARCH}

log_info "Generating compile_flags.txt file in ${dir_name}/srcs"
cat > "${dir_name}/srcs/compile_flags.txt" << EOF
-Wall
-Wextra 
-Werror
-std=c++17
-pthread
-pedantic
-Wno-unused-parameter
-Wno-unused-variable
-Wno-uninitialized
-Wno-unused-include
-Wno-narrowing
-Wno-conversion
$( for p in $(echo $CMAKE_PREFIX_PATH | sed "s/:/\n/g" |sort -u | \
  grep -E '(/gcc/)'); do echo -I${p}/include; done )
$( for p in $(echo $CMAKE_PREFIX_PATH | sed "s/:/\n/g" |sort -u | \
  grep -E '(/art|/cetlib|/trace|/fhic|/boost|/message|/caen|/json|/windri)'); do echo -I${p}/include; done )
$( for p in $(echo $CMAKE_PREFIX_PATH | sed "s/:/\n/g" |sort -u | \
  grep -E '(/sbndaq|/wibtools)'); do echo -I${p}/include; done )
$( for p in $(echo $CMAKE_PREFIX_PATH | sed "s/:/\n/g" |sort -u | \
  grep -E '(/canvas|/hep-concurrency|/intel-tbb|/clhep|/root)'); do echo -I${p}/include; done )
EOF

spack unload gcc
spack unload sbndaq-suite


mkdir -p "${dir_name}/spack/repos"
cp -r ${SPACK_PACKAGES_TOP}/spack/current/NULL/var/spack/repos/sbn-spack "${dir_name}/spack/repos/"

log_info "Generating repos.yaml file in ${dir_name}/spack"
cat > "${dir_name}/spack/repos.yaml" << EOF
repos:
- \$spack/var/spack/repos/builtin
- \$spack/var/spack/repos/fnal_art 
- \$spack/var/spack/repos/artdaq-spack
- ${SPACK_DAQ_AREAS}/${dir_name}/spack/repos/sbn-spack
EOF


spack load clingo-bootstrap %gcc@${SPACK_GCC_VERSION} arch=${SPACK_ARCH}
spack load clingo  %gcc@${SPACK_GCC_VERSION} arch=${SPACK_ARCH}

SPACK_FIND_OUTPUT=$(spack find --loaded -flvp)

log_info "Generating packages.yaml file in ${dir_name}/spack/linux"
cat > "${dir_name}/spack/linux/packages.yaml" << EOF
packages:
$( while IFS= read -r line; do
    if [[ $line =~ ^[a-z0-9]+ ]]; then
        PACKAGE=$(echo "$line" | cut -d' ' -f2 | cut -d@ -f1)
        VERSION=$(echo "$line" | cut -d' ' -f2 | cut -d@ -f2 | cut -d% -f1)
        PREFIX=$(echo "$line" | awk '{print $NF}')

        echo "  $PACKAGE:"
        echo "    externals:"
        echo "    - spec: \"$PACKAGE@$VERSION%gcc@${SPACK_GCC_VERSION} arch=${SPACK_ARCH}\""
        echo "      prefix: \"$PREFIX\""
        echo "    buildable: false" 
        echo "    version: [$VERSION]"
        echo
    fi
done <<< "$SPACK_FIND_OUTPUT")
EOF

spack unload clingo-bootstrap
spack unload clingo

}

setup_development_environment() {
    local dir_name="$1" version="$2"
    log_info "Creating new spack environment..."
    log_command "spack env create --dir ${dir_name}"
    spack env create --dir "${dir_name}" || { log_error "Failed to create spack environment"; exit 1; }

    [[ "${USE_LOCAL_CONFIGS}" = true ]] && {
        create_config_files "${dir_name}"
        log_command "unset SPACK_DISABLE_LOCAL_CONFIG"
        unset SPACK_DISABLE_LOCAL_CONFIG
        log_command "export SPACK_USER_CONFIG_PATH=${PWD}/${dir_name}/spack"
        export SPACK_USER_CONFIG_PATH="${PWD}/${dir_name}/spack"
    }

    log_info "Activating spack environment..."
    log_command "spack env activate --prompt --dir ${dir_name}"
    spack env activate --prompt --dir "${dir_name}" || { log_error "Failed to activate spack environment"; exit 1; }

    cd "${dir_name}" || { log_error "Failed to change to new environment directory"; exit 1; }

    log_info "Adding sbndaq-suite ${version} to environment..."
    log_command "spack add sbndaq-suite@${version} ${SPACK_QUALS} %gcc@${SPACK_GCC_VERSION} arch=${SPACK_ARCH}"
    spack add "sbndaq-suite@${version}" "${SPACK_QUALS}" "%gcc@${SPACK_GCC_VERSION}" "arch=${SPACK_ARCH}"

    unset GIT_CONFIG_GLOBAL
    unset GIT_EXEC_PATH

    log_info "Setting up development environment..."
    for package in "${SPACK_CHECKOUT_PACKAGES[@]}"; do
        pkg_name=$(echo "${package}" | cut -d'@' -f1)
        pkg_version=$(echo "${package}" | cut -d'@' -f2)
        log_command "spack develop --clone --force FORCE --path srcs/${pkg_name} ${pkg_name}@${pkg_version} %gcc@${SPACK_GCC_VERSION}"
        spack develop --clone --force FORCE --path srcs/${pkg_name} "${pkg_name}@develop" "%gcc@${SPACK_GCC_VERSION}" || \
          { log_error "Failed to set up development environment for ${pkg_name}"; exit 1; }
        cd srcs/${pkg_name}  || { log_error "Failed to cd to ${pkg_name} build directory"; exit 1; }
        if git checkout "release/${pkg_version}" >/dev/null 2>&1; then
            log_info "Checked out release/${pkg_version} branch"
        elif git checkout "${pkg_version}" >/dev/null 2>&1; then
            log_info "Checked out ${pkg_version} tag"
        else
            git checkout -b "release/${pkg_version}" >/dev/null 2>&1
            log_info "Created and checked out release/${pkg_version} branch"
        fi
        cd - >/dev/null || { log_error "Failed to return to previous directory"; exit 1; }
        spack develop --no-clone --path srcs/${pkg_name} "${pkg_name}@${pkg_version}" "%gcc@${SPACK_GCC_VERSION}" || \
          { log_error "Failed to set up development environment for ${pkg_name}"; exit 1; }
    done

    cd srcs && git config --global init.defaultBranch main && git init >/dev/null 2>&1 || { log_error "Failed to initialize srcs git repo"; exit 1; }
    cd - >/dev/null || { log_error "Failed to return to previous directory"; exit 1; }

    if [[ -d "./srcs/sbndaq/${SPACK_SBNENV}/DAQInterface2" ]]; then
      ln -s "./srcs/sbndaq/${SPACK_SBNENV}/DAQInterface2" DAQInterface
      log_info "Created DAQInterface symbolic link" 
    fi

    log_command "spack env deactivate"
    spack env deactivate || { log_error "Failed to deactivate spack environment"; exit 1; }
}

build_packages() {
    local dir_name="$1" version="$2"
    log_info "Building packages..."
    log_warn "This step may take several minutes depending on NFS system speed."
    log_command "spack install -y -j${SPACK_J} --fresh --no-cache --source"
    if ! spack install -y "-j${SPACK_J}" --fresh --no-cache --source ; then
        log_warn "Build failed. Entering interactive build mode..."
        
        while true; do
            echo "Available packages:"
            for i in "${!SPACK_CHECKOUT_PACKAGES[@]}"; do
                echo "$((i+1)). ${SPACK_CHECKOUT_PACKAGES[$i]}"
            done
            echo "0. Exit interactive build mode"
            
            local choice
            read -p "Select package to build (0-${#SPACK_CHECKOUT_PACKAGES[@]}): " choice
            
            if [[ "$choice" == "0" ]]; then
                log_info "Exiting interactive build mode"
                break
            elif [[ "$choice" =~ ^[1-9]+$ ]] && ((choice <= ${#SPACK_CHECKOUT_PACKAGES[@]})); then
                local pkg_name
                pkg_name=$(echo "${SPACK_CHECKOUT_PACKAGES[$((choice-1))]}" | cut -d'@' -f1)
                
                log_info "Entering build environment for ${pkg_name}..."
                log_info "Inside build environment. Use the following commands:"
                log_info "make    # To build"
                log_info "exit 0  # To exit"

                log_command "spack cd --build-dir  ${pkg_name}" 
                spack cd --build-dir  ${pkg_name}

                log_command "spack build-env ${pkg_name} -- bash"
                spack build-env "${pkg_name}" -- bash

                local build_status
                read -p "Did the build succeed? (y/n): " build_status
                if [[ ${build_status,,} == "y" ]]; then
                    continue
                fi
            else
                log_warn "Invalid selection"
            fi
        done
        
        local continue_response
        read -p "Continue with buildcache creation? (y/n): " continue_response
        if [[ ${continue_response,,} == "y" ]]; then
            create_buildcache "${dir_name}" "${version}"
            return 0
        else
            log_error "Build process aborted"
            return 1
        fi
    else
        create_buildcache "${dir_name}" "${version}"
        return 0
    fi
}

build_packages_1() {
    local dir_name="$1" version="$2"
    log_info "Building packages..."
    log_command "spack install -j${SPACK_J}"
    if spack install "-j${SPACK_J}"; then
        create_buildcache "${dir_name}" "${version}"
    else
        log_error "Build failed"
        exit 1
    fi
}

create_buildcache() {
    local dir_name="$1" version="$2"
    local mirror_path="${SPACK_DAQ_AREAS}/${dir_name}/daq/software/spack_mirrors/sbndaq-suite/${version}"
    log_info "Creating buildcache..."
    mkdir -p "${mirror_path}"
    log_command "spack find -lpd sbndaq-suite@${version}%gcc@${SPACK_GCC_VERSION}"
    while IFS= read -r line; do
        local pkg_hash pkg_spec
        pkg_hash=$(echo "$line" | awk '{print $1}')
        pkg_spec=$(echo "$line" | awk '{print $2}')
        if [[ -n "${pkg_hash}" && -n "${pkg_spec}" ]]; then
            log_command "spack buildcache push --force --unsigned --only package file://${mirror_path} ${pkg_spec} ${pkg_hash}"
            spack buildcache push --unsigned --force  --only package "file://${mirror_path}" "${pkg_spec}" "${pkg_hash}" || \
                log_warn "Failed to push ${pkg_spec} to buildcache"
        fi
    done < <(spack find -lpd "sbndaq-suite@${version}%gcc@${SPACK_GCC_VERSION}" | grep "/${dir_name}/" | awk '{printf("/%s %s\n", $1, $2)}')
    update_buildcache "${dir_name}" "${mirror_path}" "${version}"
}

update_buildcache() {
    local dir_name="$1" mirror_path="$2" version="$3"

cat > "${SPACK_DAQ_AREAS}/${dir_name}/spack/linux/mirrors.yaml" << EOF
    mirrors:
      local_mirror:
        url: file://${mirror_path}
EOF

    log_info "Updating buildcache index..."
    log_command "spack buildcache update-index file://${mirror_path}"
    spack buildcache update-index "file://${mirror_path}" || log_warn "Failed to update buildcache index"
    log_info "Listing packages in buildcache..."
    log_command "spack buildcache list -lva sbndaq-suite@${version}"
    spack buildcache list -lva "sbndaq-suite@${version}" || log_warn "Failed to list buildcache contents"
}

main() {
    #verify_self
    
    setup_signal_handlers
    parse_arguments "$@"

    echo "# Spack commands executed:" > "${CMDS_FILE}"
    setup_spack_environment

    local version
    version=$(get_version)
    echo
    log_info "Selected sbndaq-suite version: ${version}"
    local date_str
    date_str=$(date +%Y-%m-%d)
    local dir_name="DAQ_${date_str}_${DEVNAME}_${version}"

    cd "${SPACK_DAQ_AREAS}/" || { log_error "Failed to change to ${SPACK_DAQ_AREAS} directory"; exit 1; }

    if [[ -d "${dir_name}" ]]; then
        local delete_response
        delete_response=$(read_with_timeout "Directory ${dir_name} exists. Delete it? [y/N]: " "N")
        if [[ ${delete_response,,} == "y" ]]; then
            log_warn "Removing existing directory ${dir_name}"
            rm -rf "${SPACK_DAQ_AREAS}/${dir_name}"
            setup_development_environment "${dir_name}" "${version}"
        else
            echo
            log_info "Using existing directory ${dir_name}"
        fi
    else
        setup_development_environment "${dir_name}" "${version}"
    fi

    cd ${SPACK_DAQ_AREAS}

    [[ "${USE_LOCAL_CONFIGS}" = true ]] && {
        log_command "unset SPACK_DISABLE_LOCAL_CONFIG"
        unset SPACK_DISABLE_LOCAL_CONFIG
        log_command "export SPACK_USER_CONFIG_PATH=${PWD}/${dir_name}/spack"
        export SPACK_USER_CONFIG_PATH="${PWD}/${dir_name}/spack"
    }

    log_command "spack env activate --prompt --dir ${dir_name}"
    spack env activate --prompt --dir "${dir_name}" || { log_error "Failed to reactivate spack environment"; exit 1; }

    if [[ -f ${dir_name}/spack.lock ]]; then
      log_info "Regenerating view..."
      log_command "spack env view regenerate"
      spack env view regenerate || { log_error "Failed to regenerate spack view"; exit 1; }
    else
      log_info "Concretizing environment..."
      log_warn "This step may take several minutes depending on NFS system speed."
      log_command "spack concretize --quiet --force"
      spack concretize --quiet --force || { log_error "Failed to concretize spack environment"; exit 1; }
    fi

    [[ "${RUN_BUILD}" = true ]] && build_packages "${dir_name}" "${version}"

    log_info "Setup completed successfully"

    local show_cmds
    show_cmds=$(read_with_timeout "Would you like to see the executed spack commands? [y/N]: " "N")
    [[ ${show_cmds,,} == "y" ]] && cat "${CMDS_FILE}"
    echo
    
    local timestamp
    timestamp=$(date +%Y%m%d-%H%M%S)
    local new_cmds_file="${dir_name}/spack_commands-${timestamp}.txt"
    mv "${CMDS_FILE}" "${new_cmds_file}"
}

main "$@"

