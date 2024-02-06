#!/bin/bash

# Get the directory of this script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Import and run all setup scripts
for script in "$SCRIPT_DIR"/*.sh; do
    if [[ "$script" != "$SCRIPT_DIR/setup_all.sh" ]]; then
        source "$script"
    fi
done
