#!/bin/bash
bash ../remove_nvim.sh
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
cd ~/.config/nvim || exit
bash link_custom.sh
nvim
