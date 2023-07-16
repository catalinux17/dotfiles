#!/bin/bash

installgo() {
    if [ -z "$1" ]; then
        echo "Usage: installgo <new go version tar.gz file>"
        return 1
    fi

    echo "envs:"
    echo "GOROOT: $GOROOT"
    echo "GOPATH: $GOPATH"
    echo "GOBIN: $GOBIN"
    echo

    rm -rf "$GOROOT" 2>/dev/null
    mkdir -p "$GOROOT"
    tar -C "$GOROOT" -xzf "$1"
    cd "$GOROOT" || (echo "Failed to cd to $GOROOT" && return 1)

    mv go/* .
    rmdir go

    echo
    echo "installed go version: $(go version)"
    echo

    echo "installing additional tools"

    # Array of tool dependencies
    tools=(
        "github.com/cweill/gotests/gotests@latest"
        "github.com/fatih/gomodifytags@latest"
        "github.com/josharian/impl@latest"
        "github.com/haya14busa/goplay/cmd/goplay@latest"
        "github.com/go-delve/delve/cmd/dlv@latest"
        "honnef.co/go/tools/cmd/staticcheck@latest"
        "golang.org/x/tools/gopls@latest"
        "github.com/cosmtrek/air@latest"
    )

    # Loop through each tool and install
    for tool in "${tools[@]}"; do
        echo "installing $tool"
        go install "$tool"
        echo
    done

    echo "tool installation completed"

    cd || exit
}
