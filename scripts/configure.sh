#!/bin/bash

# Enable passwordless sudo for default user
echo "$(whoami) ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$(whoami)

# Update package lists
echo "Updating package lists..."
sudo apt update -y

# Upgrade packages
echo "Upgrading packages..."
sudo apt upgrade -y

# Install zsh
echo "Installing zsh..."
sudo apt install zsh -y

# Install oh-my-zsh
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Download zsh-autosuggestions plugin
echo "Installing zsh-autosuggestions plugin..."
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# Download powerlevel9k theme
echo "Installing powerlevel9k theme..."
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
