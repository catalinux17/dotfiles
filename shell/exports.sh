
add_to_path() {
    export PATH=$1:$PATH
}

add_to_path ~/.deno/bin
add_to_path ~/.local/bin
add_to_path ~/.cargo/bin
add_to_path ~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin
add_to_path ~/.rustup/toolchains/stable-aarch64-apple-darwin/bin
# export YARN_HOME=$(yarn global bin)

# export JAVA_HOME=/usr/local/opt/openjdk/bin
# export JAVA_HOME2=/opt/homebrew/opt/openjdk/bin
# export JAVA_HOME3=~/.local/bin/openjdk/bin
add_to_path /opt/homebrew/bin

# install go
# rm -rf /usr/local/go && tar -C $GOROOT -xzf /mnt/c/Users/Cata/Downloads/go1.17.6.linux-amd64.tar.gz
add_to_path ~/gopath
add_to_path ~/goroot/bin
# export GOPRIVATE="github.com/catalinux17"

add_to_path ~/dotfiles/helix/runtime
add_to_path ~/.local/share/nvim/mason/bin


add_to_path ./.test


export VISUAL=nvim
export EDITOR=nvim

export FZF_DEFAULT_COMMAND='fd --type f'

