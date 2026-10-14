# Enable the subsequent settings only in interactive sessions
case $- in
*i*) ;;
*) return ;;
esac

export EXPORT_ALIAS_PATH=~/dotfiles/shell
source $EXPORT_ALIAS_PATH/exports.sh
source $EXPORT_ALIAS_PATH/aliases.sh
source $EXPORT_ALIAS_PATH/functions.sh
[ -f "$HOME/.aliases" ] && source "$HOME/.aliases"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"
[ -f "$HOME/.deno/env" ] && . "$HOME/.deno/env"
[ -f "$HOME/.local/share/bash-completion/completions/deno.bash" ] && source "$HOME/.local/share/bash-completion/completions/deno.bash"
