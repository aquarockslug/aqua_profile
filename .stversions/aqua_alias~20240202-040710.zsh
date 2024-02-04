# utilities
alias hist='gum filter < $HISTFILE --height 20'
alias please="gum input --password | sudo -nS"
alias chmodx='sudo chmod u+x $(gum file ./)'
alias fzf="fzf --reverse --multi --preview $'{} \n stat -c %s {} | numfmt --to=iec'"

# run apps
alias gs='git status'
alias lg='lazygit'
alias pacmans='sudo pacman -S '
alias p="python"
alias s="sudo"
alias gn="glow /mnt/c/Users/aquarock/share/nap/Notes"
alias b="buku --suggest"
alias cht='cht.sh $(gum input --placeholder "language...") $(gum input --placeholder "query...") | gum pager'

# nvim
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias vnim="nvim"

# system info
alias tasks="ps aux"
alias fd="sudo fdisk -l"
alias du="du -h"
alias df="df -h"
