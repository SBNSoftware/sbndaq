#!/bin/bash
PRODUCTS=${PRODUCTS:-'/cvmfs/fermilab.opensciencegrid.org/products/artdaq:/cvmfs/fermilab.opensciencegrid.org/products/larsoft'}


#configure variables
working_dir="${WORKSPACE:-$(pwd)}"
selected_build_config=${1:-${BUILDCONFIG:-"testing"}}
qual_set="${2:-${QUAL:-'s112:e20'}}"
build_type="${3:-${BUILDTYPE:-'prof'}}"
PROJECT_SOURCE_GIT_PREFIX="${4:-${PROJECT_SOURCE_GIT_PREFIX:-'https://github.com/sbnsoftware'}}"
export PROJECT_SOURCE_GIT_PREFIX

ARTDAQ_VERSION=${ARTDAQ_VERSION:-"v3_11_02"}
export ARTDAQ_VERSION

DEFAULT_BRANCHTAG=${DEFAULT_BRANCHTAG:-'v1_02_00'}
PRODUCTS=$(for d in $(echo $PRODUCTS | tr ":" " "); do [[ -d $d ]] && echo -n "$d:"; done)
PRODUCTS=${PRODUCTS::-1}
export PRODUCTS

BUILDTYPE=${build_type}
export BUILDTYPE

WORKSPACE=${working_dir}
export WORKSPACE

#available configurations
source_branchtages_testing=(
   "wibtools:v1_02_00"
   "sbndaq_artdaq_core:${SBNDAQ_ARTDAQ_CORE_BRANCHTAG:-${DEFAULT_BRANCHTAG}}"
   "sbndaq_artdaq:${SBNDAQ_ARTDAQ_BUILDTAG:-${DEFAULT_BRANCHTAG}}"
   "sbndaq:${SBNDAQ_BRANCHTAG:-${DEFAULT_BRANCHTAG}}"
)

source_branchtages_tagged=(
   "wibtools:${WIBTOOLS_BRANCHTAG:-${DEFAULT_BRANCHTAG}}"
   "sbndaq_artdaq_core:${SBNDAQ_ARTDAQ_CORE_BRANCHTAG:-${DEFAULT_BRANCHTAG}}"
   "sbndaq_artdaq:${SBNDAQ_ARTDAQ_BUILDTAG:-${DEFAULT_BRANCHTAG}}"
   "sbndaq:${SBNDAQ_BRANCHTAG:-${DEFAULT_BRANCHTAG}}"
)

source_branchtages_master=(
   "wibtools:master"
   "sbndaq_artdaq_core:master"
   "sbndaq_artdaq:master"
   "sbndaq:master"
)

source_branchtages_develop=(
   "wibtools:develop"
   "sbndaq_artdaq_core:develop"
   "sbndaq_artdaq:develop"
   "sbndaq:develop"
)

usage() {
  cat 1>&2 <<EOF
Usage: $(basename ${0}) [-h]
       $(basename ${0})  <buildconfig> <qual_set> <buildtype> <gitprefix>
       WORKSPACE=<workspace> BUILDCONFIG=<develop|master|tagged|testing> QUAL=<qualifiers> BUILDTYPE=<debug|prof> PROJECT_SOURCE_GIT_PREFIX='https://github.com/sbnsoftware'  $(basename ${0})
EOF
}

function main()
{

  local source_branchtages_var=source_branchtages_$selected_build_config[@]
  local source_branchtages=${!source_branchtages_var}

  cd ${working_dir}
  local copybackall_dir=${working_dir}/copyBackAll
  [[ -d ${copybackall_dir} ]] && rm -rf ${copybackall_dir}
  mkdir -p ${copybackall_dir}

  for source_branchtag in ${source_branchtages[*]};do
    local product_name=$(echo $source_branchtag | cut -d ":" -f 1 )
    local source_branchtag=$(echo $source_branchtag | cut -d ":" -f 2 )
    local src_dir=${working_dir}/source
    local project_uri=${PROJECT_SOURCE_GIT_PREFIX}/$(echo $product_name | tr "_" "-")$( [[ ${PROJECT_SOURCE_GIT_PREFIX} =~ github ]] && echo ".git" || echo "" )

    [[ ${product_name} =~ "wibtools" ]] && QUAL=$(echo $qual_set|sed 's/:py2//g') || QUAL=${qual_set}

    [[ -d ${src_dir} ]] && rm -rf ${src_dir}
    mkdir -p ${src_dir}; cd ${src_dir}
    [[ -d  ${working_dir}/products/${product_name} ]] && rm -rf ${working_dir}/products/${product_name}

#    if [[ ! -f ${working_dir}/build-${product_name}.sh ]]; then
      git clone ${project_uri} ${product_name} >/dev/null  2>&1
      [[ $? -eq 0 ]] \
        || { echo "Error: Failed checking out source from ${project_url}."; return 1; }

      cd ${src_dir}/${product_name}
      if [ $? -eq 0 ]; then
        git checkout ${source_branchtag} >/dev/null 2>&1
        [[ $(git branch |grep '*' )  =~ ${source_branchtag} ]] \
          || { echo "Error: Failed changing ${product_name}'s branch (or tag) to ${source_branchtag}."; return 2; }
      fi

      rm -rf ${working_dir}/build.sh >/dev/null 2>&1
      cp ./for-jenkins/build-${product_name}.sh ${working_dir}/ >/dev/null 2>&1
      rm -rf ${src_dir}
#    fi


    cd ${working_dir}
    BRANCHTAG=${source_branchtag}
    echo Running build for $product_name.
    ./build-${product_name}.sh "$BRANCHTAG" "$QUAL" "$BUILDTYPE" |tee ${copybackall_dir}/combined-build-${product_name}.log
    [[ $? -eq 0 ]] \
       || { echo "Error: Failed building ${product_name} with $QUAL."; return 3; }

    cp -f ${working_dir}/copyBack/{*-${product_name}.log,${product_name}*.tar.bz2} ${copybackall_dir}/
    [[ $(ls ${working_dir}/copyBack/${product_name}*.tar.bz2 |wc -l ) -eq 1 ]] \
      ||  { echo "Error: No ${product_name}*.tar.bz2 found in the copyBack directory."; return 4; }

  done

  #cleanup
  rm -rf "${src_dir}"
  rm -rf "${working_dir}/python3_env"
  rm -rf "${working_dir}/copyBack"
  mv ${working_dir}/{copyBackAll,copyBack}
}


while getopts :h OPT; do
  case ${OPT} in
    h)
      usage
      exit 1
      ;;
    *)
      usage
      exit 1
  esac
done
shift $(expr $OPTIND - 1)
OPTIND=1

#run main
main

