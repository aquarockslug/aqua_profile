# utilities
hist() { peco < $HISTFILE }
please() { gum input --password | sudo -nS }
chmodx() { sudo chmod u+x $1 }
fzfind() { fzf --reverse --multi --preview $'{} \n stat -c %s {} | numfmt --to=iec' }

# run apps
gs() { git status }
lg() { lazygit }
pacmans() { sudo pacman -S }
py() { python }
s() { sudo } 
gn() { glow /mnt/c/Users/aquarock/share/nap/Notes }
b() { buku --suggest }
buku-export() { buku -e /mnt/c/Users/aquarock/share/buku_html/bookmarks.html }
k() { kabmat }
cht() { 
  cht.sh $(gum input --placeholder "language...") 
  $(gum input --placeholder "query...") | gum pager 
}
n() {
  nap $
}

# tmux
hsplit() { 
  tmux split-window -h
  tmux send-keys $1 Enter
}
vsplit() { 
  tmux split-window -v
  tmux send-keys $1 Enter
}

# nvim
v() { nvim }
vi() { nvim }
vim() { nvim }
vnim() { nvim }

# system info 
tasks() { ps aux }
fd() { sudo fdisk -l }
du() { du -h }
df() { df -h }
