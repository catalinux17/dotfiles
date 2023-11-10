#!/bin/bash

bash ../remove_nvim.sh

# Clone starter
git clone https://github.com/LazyVim/starter ~/.config/nvim

rm -rf ~/.config/nvim/.git
