#!/usr/bin/env bash

echo "*** Running $(basename "${BASH_SOURCE}") on $(hostname -s)."

[[ "$0" != "${BASH_SOURCE[0]}" ]] || { echo "The script $(basename "${BASH_SOURCE[0]}") should be sourced!"; exit 1; }

readonly packages_with_art_modules="sbndaq-artdaq sbndaq-artdaq-core artdaq artdaq-core"

prepend_paths_for_art_modules() {
    local -r var_name="${1}"
    local -r subdir="${2:-include}"
    local -r path_variable="${CMAKE_PREFIX_PATH:-}"
    local -r filter_list="${packages_with_art_modules}"

    if [[ -z "${var_name}" ]]; then
        echo "Error: Missing required parameter: variable name." >&2
        return 1
    fi

    if [[ -z "${filter_list}" || -z "${path_variable}" ]]; then
        return 0
    fi

    if ! command -v awk >/dev/null 2>&1; then
        echo "Error: awk command not found." >&2
        return 1
    fi

    local -r awk_script='
        BEGIN {
            RS = ":"
            split(packages, package_array, " ")
            for (i in package_array) {
                targets[package_array[i]] = 1
            }
        }
        NF > 0 {
            split($0, path_components, "/")
            if (length(path_components) >= 5) {
                package_name = path_components[5]
                if (package_name in targets) {
                    if (output_started) printf ":"
                    printf "%s/%s", $0, subdir_to_append
                    output_started = 1
                }
            }
        }'

    local processed_paths
    processed_paths=$(awk -v packages="${filter_list}" -v subdir_to_append="${subdir}" "${awk_script}" <<< "${path_variable}") || {
        echo "Error: Failed to process paths with awk." >&2
        return 1
    }

    if [[ -z "${processed_paths}" ]]; then
        return 0
    fi

    local current_value
    if ! current_value=$(eval "echo \"\${${var_name}:-}\""); then
        echo "Error: Failed to retrieve current value of ${var_name}." >&2
        return 1
    fi

    local new_value
    if [[ -n "${current_value}" ]]; then
        new_value="${processed_paths}:${current_value}"
    else
        new_value="${processed_paths}"
    fi

    if ! eval "export ${var_name}=\"\${new_value}\""; then
        echo "Error: Failed to set variable ${var_name}." >&2
        return 1
    fi
}

if ! prepend_paths_for_art_modules "LD_LIBRARY_PATH" "lib"; then
    echo "Error: Failed to prepend filtered package path to LD_LIBRARY_PATH" >&2
    return 1
fi

if ! prepend_paths_for_art_modules "ROOT_LIBRARY_PATH" "lib"; then
    echo "Error: Failed to prepend filtered package path to ROOT_LIBRARY_PATH" >&2
    return 1
fi

if ! prepend_paths_for_art_modules "ROOT_INCLUDE_PATH" "include"; then
    echo "Error: Failed to prepend filtered package path to ROOT_INCLUDE_PATH" >&2
    return 1
fi
