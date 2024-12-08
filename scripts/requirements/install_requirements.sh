#!/bin/bash
echo "Installing Homebrew"
yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
if [[ "$(uname -a)" == *"Linux"* ]]; then
  echo "Linux OS detected"
  echo "Running sudo apot update and upgrade"
  sudo apt update
  sudo apt upgrade -y
  echo "Installing curl, git, zsh, and vim"
  sudo apt install -y curl git zsh vim
  (
    echo
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"'
  ) >>/home/$USERNAME/.bashrc
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  echo "Installing stow"
  brew install stow
else
  echo "Mac OS detected"
  echo "Installing curl, git, zsh and vim"
  brew install curl git zsh vim
fi
echo "Installing starship"
brew install starship
sudo apt-get install build-essential
brew install gcc
brew doctor
