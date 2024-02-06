#!/bin/bash

echo "Running oh-my-zsh setup script"

# Install oh my zsh if it is not already installed
if [ -d "$HOME/.oh-my-zsh" ]; then
    echo "oh-my-zsh already installed. Updating"
    git -C "$HOME/.oh-my-zsh" pull
else
    echo "Installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Try and Download and install powerlevel10k. If the theme is already installed just update it
if [ -d "$HOME/.oh-my-zsh/custom/themes/powerlevel10k" ]; then
    echo "Powerlevel10k already installed. Updating"
    git -C "$HOME/.oh-my-zsh/custom/themes/powerlevel10k" pull
else
    echo "Installing powerlevel10k"
    git clone --depth=1 --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
fi

# Download and install nerd fonts
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh
cd ..
rm -rf nerd-fonts

# Download and install zsh-autosuggestions
if [ -d "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ]; then
    echo "zsh-autosuggestions already installed. Updating"
    git -C "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions" pull
else
    echo "Installing zsh-autosuggestions"
    git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

# Download and install zsh-syntax-highlighting
if [ -d "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ]; then
    echo "zsh-syntax-highlighting already installed. Updating"
    git -C "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" pull
else
    echo "Installing zsh-syntax-highlighting"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

# Download and install zsh-autocomplete
if [ -d "$HOME/.oh-my-zsh/custom/plugins/zsh-autocomplete" ]; then
    echo "zsh-autocomplete already installed. Updating"
    git -C "$HOME/.oh-my-zsh/custom/plugins/zsh-autocomplete" pull
else
    echo "Installing zsh-autocomplete"
    git clone https://github.com/marlonrichert/zsh-autocomplete.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autocomplete
fi

# Download and install zsh-activate-py-environment
if [ -d "$HOME/.oh-my-zsh/custom/plugins/zsh-activate-py-environment" ]; then
    echo "zsh-activate-py-environment already installed. Updating"
    git -C "$HOME/.oh-my-zsh/custom/plugins/zsh-activate-py-environment" pull
else
    echo "Installing zsh-activate-py-environment"
    git clone https://github.com/se-jaeger/zsh-activate-py-environment.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-activate-py-environment
fi

# Download and install you-should-use
if [ -d "$HOME/.oh-my-zsh/custom/plugins/you-should-use" ]; then
    echo "you-should-use already installed. Updating"
    git -C "$HOME/.oh-my-zsh/custom/plugins/you-should-use" pull
else
    echo "Installing you-should-use"
    git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use
fi