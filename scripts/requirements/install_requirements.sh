#!/bin/bash

sudo apt update
sudo apt upgrade -y

echo "Installing curl, git, zsh, and vim"
sudo apt install -y curl git zsh vim

echo "Installing Homebrew"
yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
if [[ "$(uname -a)" == *"Linux"* ]]; then
    echo "Linux OS detected, adding Homebrew to PATH"
    (echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/david/.bashrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi
sudo apt-get install build-essential
brew install gcc
brew doctor
