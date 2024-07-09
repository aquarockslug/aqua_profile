# zsh functions

hist() { peco < $HISTFILE }
fzfind() { fzf --reverse --multi --preview $'{} \n stat -c %s {} | numfmt --to=iec' }
chmodx() { sudo chmod u+x $1 } 

# text editing
ff() {
	nvim -c "Telescope find_files"
}

# video editing
dl() { echo $1 >> ~/home/Downloads/dl.txt}
clip() { 
	CLIP=$1; NAME=${CLIP%.*}; OUTPUT=$NAME.clip.mp4
	echo Start:; START=$(gum input --placeholder "00:00")
	echo Duration:; DURATION=$(gum input --placeholder "00:00")
	ffmpeg -y -i $CLIP -ss 00:$START -t 00:$DURATION -async -1 $OUTPUT
	echo Clipped $DURATION seconds from $NAME
}
gif() {
	CLIP=$1 
	ffmpeg -y -i $CLIP -filter_complex "fps=12,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen=max_colors=32[p];[s1][p]paletteuse=dither=bayer" ${CLIP%.*}.gif
	echo Created ${CLIP%.*}
}
speedup() {
	ffmpeg -i $1 -vf "setpts=0.5*PTS" -filter:a "atempo=2" ${1%.*}_fast.mp4
}

lg() { lazygit $1 }
search() { ddgr $1 }
n() { nap $(nap list | peco) | glow }
cht() { 
  cht.sh $(gum input --placeholder "language...") \
  $(gum input --placeholder "query...") | gum pager  
}
