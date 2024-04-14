# zsh functions

# tmux
split() { tmux split-window -$1; tmux send-keys $2 Enter }
split_arg() { if [[ $2 ]]; then; split $2 $1; else; eval $1; fi }
pl() { tmux select-pane -L }

# utilities
hist() { peco < $HISTFILE }
fzfind() { fzf --reverse --multi --preview $'{} \n stat -c %s {} | numfmt --to=iec' }
chmodx() { sudo chmod u+x $1 } 
dl() { echo $1 >> ~/home/Downloads/dl.txt}
clip() { 
	CLIP=$1; START=$2; END=$3
	DURATION=$((END-$START))
	NAME=${CLIP%.*}
	OUTPUT=$NAME.gif
	ffmpeg -y -i $CLIP -ss 00:00:$START -t 00:00:$DURATION -async -1 $OUTPUT
	ffmpeg_crt $OUTPUT
	rm $OUTPUT
	firefox file://///wsl.localhost/Arch/$PWD/${CLIP%.*}_crt.gif
	echo Clipped $DURATION seconds from ${CLIP%.*}
	ffmpeg -y -i ${CLIP%.*}_crt.gif -filter_complex "fps=12,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen=max_colors=32[p];[s1][p]paletteuse=dither=bayer" ${CLIP%.*}_small.gif
	firefox file://///wsl.localhost/Arch/$PWD/${CLIP%.*}_small.gif
}
activate() { source ./bin/activate }

# apps
gs() { split_arg "git status" $1 }
lg() { split_arg lazygit $1 }
pacmans() { sudo pacman -S $1 }
buku-export() { buku -e /mnt/c/Users/aquarock/share/buku_html/bookmarks.html }
n() { nap $(nap list | peco) | glow }
cht() { 
  cht.sh $(gum input --placeholder "language...") \
  $(gum input --placeholder "query...") | gum pager  
}
