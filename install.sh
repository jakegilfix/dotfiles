#!/bin/bash

# Get more recent version of `fish`
sudo apt-add-repository ppa:fish-shell/release-3 -y
sudo apt update

# Install stuff I want
sudo apt install -y zsh bat fzf fish zoxide

# Alias bat (wth is batcat?)
sudo ln -s /usr/bin/batcat /usr/bin/bat
bat cache --build

# Set default shell to fish
which fish && sudo chsh -s $(which fish) affirm
which fish && sudo usermod -s $(which fish) jakegilfix

# Create symlinks to dotfiles
ln -s "$HOME/.dotfiles/.config" "$HOME/.config"
ln -s "$HOME/.dotfiles/.zprofile" "$HOME/.zprofile"
ln -s "$HOME/.dotfiles/.vimrc" "$HOME/.vimrc"

# Install starship (prompt)
curl -sS https://starship.rs/install.sh | sudo sh | y

# Install `eza`
sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update
sudo apt install -y eza
