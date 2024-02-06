#!/bin/bash

# Log running of this script
echo "Running all setup scripts"

# Make sure all dependencies are installed
sudo apt update
sudo apt upgrade -y
sudo apt install -y curl git zsh vim

# Get the directory of this script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Import and run all setup scripts
for script in "$SCRIPT_DIR"/*.sh; do
    if [[ "$script" != "$SCRIPT_DIR/setup_all.sh" ]]; then
        source "$script"
    fi
done

# Run stow to symlink dotfiles
cd "$HOME/dotfiles"
stow .