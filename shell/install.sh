rm ~/.zshrc 2>/dev/null
rm ~/.bashrc 2>/dev/null

if ! command -v fish >/dev/null 2>&1; then
    echo "Installing fish..."
    if command -v pacman >/dev/null 2>&1; then
        sudo pacman -S --noconfirm fish
    elif command -v apt >/dev/null 2>&1; then
        sudo apt install -y fish
    elif command -v brew >/dev/null 2>&1; then
        brew install fish
    else
        echo "Could not install fish: no supported package manager found"
        exit 1
    fi
fi

ln -sf ~/dotfiles/shell/.zshrc ~
ln -sf ~/dotfiles/shell/.bashrc ~

mkdir -p ~/.config/fish
ln -sf ~/dotfiles/shell/config.fish ~/.config/fish/config.fish

fish -c 'source ~/dotfiles/shell/fish_plugins'
