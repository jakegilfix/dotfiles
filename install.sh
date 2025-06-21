#!/bin/bash

sudo apt install -y zsh bat fzf fish

sudo chsh -s $(which zsh) affirm
sudo chsh -s $(which zsh) jakegilfix

ln -s "$HOME/.dotfiles/.config" "$HOME/.config"
ln -s "$HOME/.dotfiles/.zprofile" "$HOME/.zprofile"

sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update
sudo apt install -y eza
