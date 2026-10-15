alias ..="cd .."
alias vim=nvim
alias vi=nvim
alias v=nvim
alias viewpr="gh pr view --web"
alias viewrepo="gh repo view --web"
alias clearcache="sudo swapoff -a && swapon -a"
alias ginstall="git clone git@github.com:catalinux17/" # to download repos from catalinux17
# alias colliers_ec2="ssh -i ~/.ssh/colliers.pem ubuntu@3.70.241.115"
alias pi="ssh cata@192.168.0.150"
alias pitemp="vcgencmd measure_temp && vcgencmd measure_volts"

# rusty
alias cat2=bat
alias sk='sk --preview="bat {} --color=always"'
alias irg='sk -i -c "rg {} --color=always" --ansi'

alias gs="git status"
alias gd="git diff"
alias py="python3"
# alias hx=helix

alias f=fzf

# cht
alias cht=~/dotfiles/cht/cht.sh
alias hfzf="history | fzf"

alias lg=lazygit
alias dot="cd ~/dotfiles"

alias updaterust="curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh"

# alias hx=helix
alias h=helix
# alias z=zellij

alias create_venv="python3.14 -m venv venv"
alias venv="source .venv/bin/activate"
alias venv_requirements="pip install -r requirements.txt"

alias week_no='date +%V'

alias acomar='ssh -i ~/.ssh/hetzner/acomar root@135.181.104.164'

alias ssh_puly='ssh -i ~/.ssh/hetzner/hetzner root@2a01:4f9:c011:b64a::1'
alias ssh_pul='ssh -i ~/.ssh/hetzner/hetzner root@62.238.31.175'
alias ssh_pul_db='ssh -i ~/.ssh/hetzner/hetzner -L 5432:localhost:5432 root@62.238.31.175'

alias pi_fwd='ssh -L 3000:127.0.0.1:3000 -L 3001:127.0.0.1:3001 -L 9428:127.0.0.1:9428 -L 8428:127.0.0.1:8428 -L 5432:127.0.0.1:5432 -L 6379:127.0.0.1:6379 -N cata@pi'

alias gomtv="go mod tidy && go mod vendor"
