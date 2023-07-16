#!/bin/bash

rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
cd ~/.config/nvim || exit

bash ~/dotfiles/nvchad/install_chad.sh
nvim
