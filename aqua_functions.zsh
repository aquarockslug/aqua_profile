# zsh functions

# tmux
split() { tmux split-window -$1; tmux send-keys $2 Enter }
split_arg() { if [[ $2 ]]; then; split $2 $1; else; eval $1; fi }
pl() { tmux select-pane -L }


# utilities
hist() { peco < $HISTFILE }

fzfind() { fzf --reverse --multi --preview $'{} \n stat -c %s {} | numfmt --to=iec' }
rpi4() {
  sudo rsync -R $(gum file) 
    alarm@192.168.1.150:$(gum input --placeholder "Destination...") 
}
chmodx() { sudo chmod u+x $1 } 
# chmodx() { 
  # if [[ $1 ]]; then; sudo chmod u+x $1; 
  # else; sudo chmod u+x $(gum file); fi 
# }

# apps
gs() { split_arg "git status" $1 }
lg() { split_arg lazygit $1 }
pacmans() { sudo pacman -S $1 }
gn() { glow /mnt/c/Users/aquarock/share/nap/Notes }
buku-export() { buku -e /mnt/c/Users/aquarock/share/buku_html/bookmarks.html }
n() { nap $(nap list | peco) | glow }
k() { kabmat }
cht() { 
  cht.sh $(gum input --placeholder "language...") \
  $(gum input --placeholder "query...") | gum pager  
}
