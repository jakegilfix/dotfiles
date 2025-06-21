#!/bin/bash

sudo apt install -y zsh bat fzf

sudo chsh -s $(which zsh) affirm
sudo chsh -s $(which zsh) jakegilfix

ln -s "$HOME/.dotfiles/.config" "$HOME/.config"
ln -s "$HOME/.dotfiles/.zprofile" "$HOME/.zprofile"
