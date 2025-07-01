add_to_path() {
	export PATH=$1:$PATH
}

add_to_path ~/.deno/bin
add_to_path ~/.local/bin
add_to_path ~/.cargo/bin
add_to_path ~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin
add_to_path ~/.rustup/toolchains/stable-aarch64-apple-darwin/bin
add_to_path ~/dotfiles/helix/runtime
add_to_path /opt/homebrew/bin
add_to_path ~/.local/share/nvim/mason/bin
add_to_path ~/.bun/bin
add_to_path /opt/homebrew/opt/postgresql@15/bin

export GOPATH=~/gopath
export GOROOT=~/goroot
export GOBIN=~/goroot/bin
export HELIX_RUNTIME=~/dotfiles/helix/runtime
add_to_path $GOPATH
add_to_path $GOROOT
add_to_path $GOBIN

export VISUAL=nvim
export EDITOR=nvim

export FZF_DEFAULT_COMMAND='fd --type f'
