alias ..="cd .."
alias vim=nvim
alias vi=nvim
alias v=nvim
alias nv=neovide
alias x="xclip -selection clipboard"
alias c=pbcopy
alias viewpr="gh pr view --web"
alias viewrepo="gh repo view --web"
alias clearcache="sudo swapoff -a && swapon -a"
alias ginstall="git clone git@github.com:catalinux17/" # to download repos from catalinux17
alias colliers_ec2="ssh -i ~/.ssh/colliers.pem ubuntu@3.70.241.115"
alias pi="ssh cata@192.168.0.150"
alias pitemp="vcgencmd measure_temp && vcgencmd measure_volts"

# rusty
# alias l="exa -a"
# alias ls=exa
alias cat2=bat
alias sk='sk --preview="bat {} --color=always"'
alias irg='sk -i -c "rg {} --color=always" --ansi'

alias gs="git status"
alias py="python3"
alias venv="source .venv/bin/activate"
# alias hx=helix

alias f=fzf

# cht
alias cht=~/dotfiles/cht/cht.sh
alias hfzf="history | fzf"

alias lg=lazygit
alias dot="cd ~/dotfiles"

alias nv=neovide
alias updaterust="curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh"
alias dirvim="cd ~/dotfiles/nvim/"

# alias hx=helix
alias h=helix
alias z=zellij

# alias create_venv="python3 -m venv .venv"

create_venv() {
	python3.11 -m venv .venv
	source .venv/bin/activate
	pip install -r requirements.txt

}

alias venv_requirements="pip install -r requirements.txt"
