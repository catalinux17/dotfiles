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
plugins=(git golang copybuffer web-search aliases brew copyfile)
source $ZSH/oh-my-zsh.sh

export EXPORTALIASPATH=~/dotfiles/shell
source $EXPORTALIASPATH/exports
source $EXPORTALIASPATH/aliases
source ~/.aliases 2> /dev/null


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
