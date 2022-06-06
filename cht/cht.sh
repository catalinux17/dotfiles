#!/usr/bin/env bash
LANGS=~/dotfiles/cht/langs
UTILS=~/dotfiles/cht/utils
selected=$(cat $LANGS $UTILS | fzf)

if [[ -z $selected ]]; then
    exit 0
fi

echo "Selected: $selected"
read -rp "Enter Query: " query

if grep -qs "$selected" $LANGS; then
    query=${query/ /+}
    curl cht.sh/"$selected"/"$query"
else
    curl -s cht.sh/"$selected"~"$query" | less
fi
