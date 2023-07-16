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
plugins=(git golang copybuffer web-search aliases brew copyfile docker vscode kubectl kubectl-autocomplete)
source $ZSH/oh-my-zsh.sh

export EXPORT_ALIAS_PATH=~/dotfiles/shell
source $EXPORT_ALIAS_PATH/exports.sh
source $EXPORT_ALIAS_PATH/aliases.sh
source $EXPORT_ALIAS_PATH/funcs.sh
source $HOME/.aliases 2>/dev/null

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
