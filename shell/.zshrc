export ZSH=~/.oh-my-zsh
#
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="dd/mm/yyyy"
plugins=(git golang copybuffer web-search aliases brew copyfile vscode jump z eza)
source $ZSH/oh-my-zsh.sh

export EXPORT_ALIAS_PATH=~/dotfiles/shell
source $EXPORT_ALIAS_PATH/exports.sh
source $EXPORT_ALIAS_PATH/aliases.sh
source $EXPORT_ALIAS_PATH/functions.sh
source $HOME/.aliases 2>/dev/null

if command -v zoxide &>/dev/null; then
	eval "$(zoxide init zsh)"
fi
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# [[ $commands[kubectl] ]] && source <(kubectl completion zsh)

# bun completions
# [ -s "/Users/ocatalin/.bun/_bun" ] && source "/Users/ocatalin/.bun/_bun"

_just_completion() {
	if [[ -f "justfile" ]]; then
		local options
		options="$(just --summary)"
		reply=(${(s: :)options}) # turn into array and write to return variable
	fi
}

compctl -K _just_completion just

# Vite+ bin (https://viteplus.dev)
. "/Users/cat/.config/vite-plus/env"
