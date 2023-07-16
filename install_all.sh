#!/bin/bash
INSTALL_FILE="install.sh"

for d in */; do
    pushd "$d" || return
    echo "$d"
    test -f $INSTALL_FILE && bash $INSTALL_FILE
    popd || exit
done
