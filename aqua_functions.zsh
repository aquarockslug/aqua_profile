# zsh functions

split() { tmux split-window -$1; tmux send-keys $2 Enter }
split_arg() { if [[ $2 ]]; then; split $2 $1; else; eval $1; fi }
pl() { tmux select-pane -L }

hist() { peco < $HISTFILE }
fzfind() { fzf --reverse --multi --preview $'{} \n stat -c %s {} | numfmt --to=iec' }
docs() { ~/home/share/docs/search.sh }
chmodx() { sudo chmod u+x $1 } 
dl() { echo $1 >> ~/home/Downloads/dl.txt}
clip() { 
	CLIP=$(gum file) 
	echo Start: ; START=$(gum input --placeholder "00:00:00"); #END=$3
	echo Duration: ; DURATION=$(gum input --placeholder "00:00:00")
	# DURATION=$((END-$START))
	NAME=${CLIP%.*}
	OUTPUT=$NAME.webm
	ffmpeg -y -i $CLIP -ss $START -t $DURATION -async -1 $OUTPUT
	ffmpeg_crt $OUTPUT
	rm $OUTPUT
	ffmpeg -y -i ${CLIP%.*}_crt.mp4 -filter_complex "fps=12,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen=max_colors=32[p];[s1][p]paletteuse=dither=bayer" ${CLIP%.*}_small.gif

	echo Clipped $DURATION seconds from ${CLIP%.*}
}
activate() { source ./bin/activate }

# apps
gs() { split_arg "git status" $1 }
lg() { split_arg lazygit $1 }
pacmans() { sudo pacman -S $1 }
search() { ddgr $1 }
buku-export() { buku -e /mnt/c/Users/aquarock/share/buku_html/bookmarks.html }
n() { nap $(nap list | peco) | glow }
cht() { 
  cht.sh $(gum input --placeholder "language...") \
  $(gum input --placeholder "query...") | gum pager  
}
