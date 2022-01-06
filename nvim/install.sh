#!/usr/bin/env bash
mkdir -p ~/.config/nvim/additional
mkdir -p ~/.config/nvim/lua/cata

# link wholesale
for f in `find . -regex ".*\.vim$\|.*\.lua$"`; do
    rm -rf ~/.config/nvim/$f 2> /dev/null
    ln -s ~/dotfiles/nvim/$f ~/.config/nvim/$f
done
