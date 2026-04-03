# PATH
fish_add_path ~/.deno/bin
fish_add_path ~/.local/bin
fish_add_path ~/.cargo/bin
fish_add_path ~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin
fish_add_path ~/.rustup/toolchains/stable-aarch64-apple-darwin/bin
fish_add_path ~/dotfiles/helix/runtime
fish_add_path /opt/homebrew/bin
fish_add_path ~/.local/share/nvim/mason/bin
fish_add_path ~/.bun/bin
fish_add_path /opt/homebrew/opt/postgresql@15/bin

# Go
set -gx GOPATH ~/gopath
set -gx GOROOT ~/goroot
set -gx GOBIN ~/goroot/bin
fish_add_path $GOPATH
fish_add_path $GOROOT
fish_add_path $GOBIN

# Helix
set -gx HELIX_RUNTIME ~/dotfiles/helix/runtime

# Editor
set -gx VISUAL nvim
set -gx EDITOR nvim

# fzf
set -gx FZF_DEFAULT_COMMAND 'fd --type f'

# Source bash files via bass
if type -q bass
    bass source ~/dotfiles/shell/aliases.sh
    if test -f ~/.aliases
        bass source ~/.aliases
    end
end

# Load bobnet fish config (command vault + work-specific tools)
if test -d ~/dotfiles_bobnet/fish
    set -p fish_function_path ~/dotfiles_bobnet/fish/functions
    for f in ~/dotfiles_bobnet/fish/conf.d/*.fish
        source $f
    end
end
