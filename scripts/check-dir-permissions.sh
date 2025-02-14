#!/bin/bash

check_permissions() {
    verbose=false
    target_dir="$PWD"

    for arg in "$@"; do
        case $arg in
            -v|--verbose)
                verbose=true
                shift
                ;;
            *)
                if [[ -d "$arg" ]]; then
                    target_dir="$arg"
                else
                    echo "ERROR: Invalid directory specified: $arg"
                    exit 1
                fi
                ;;
        esac
    done

    user_primary_group=$(id -gn)

    current_dir="$target_dir"
    while [[ "$current_dir" != "/" ]]; do
        if [[ -d "$current_dir" ]]; then
            group_owner=$(stat -c "%G" "$current_dir")
            if ! touch "$current_dir/.permission_test_file" 2>/dev/null; then
                echo "ERROR: Cannot create file in directory: $current_dir"
            else
                rm "$current_dir/.permission_test_file"
                $verbose && echo "INFO: File creation successful in directory: $current_dir"
            fi

            if ! mkdir "$current_dir/.permission_test_dir" 2>/dev/null; then
                echo "ERROR: Cannot create directory in: $current_dir"
            else
                rmdir "$current_dir/.permission_test_dir"
                $verbose && echo "INFO: Directory creation successful in: $current_dir"
            fi

            if [[ "$group_owner" != "$user_primary_group" ]]; then
                $verbose && echo "INFO: Directory $current_dir group ownership is not the primary user's group: $group_owner"
            fi

            sticky_flag=$(stat -c "%A" "$current_dir" | cut -c 10)
            if [[ "$sticky_flag" == "t" ]]; then
                $verbose && echo "INFO: Directory $current_dir has the sticky flag set"
            fi
        else
            echo "ERROR: Directory $current_dir is either inaccessible or does not exist"
        fi
        current_dir=$(dirname "$current_dir")
    done
}

check_permissions "$@"
