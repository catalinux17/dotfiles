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
plugins=(git golang)
source $ZSH/oh-my-zsh.sh

export ZSHHOME=~/dotfiles/zsh
source $ZSHHOME/exports
source $ZSHHOME/aliases
source ~/.aliases

