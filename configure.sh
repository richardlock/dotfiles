#!/bin/bash

# Update package lists
echo "Updating package lists..."
sudo apt update

# zsh install
echo "Installing zsh..."
sudo apt install zsh -y

# oh-my-zsh install
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# zsh-autosuggestions install
echo "Installing zsh-autosuggestions plugin..."
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# powerlevel9k install
echo "Installing powerlevel9k..."
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# dotfiles
echo "Installing dotfiles..."
git clone -b wsl https://github.com/richardlock/dotfiles.git ~/.dotfiles
~/.dotfiles/install
