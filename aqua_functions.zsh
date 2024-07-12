# zsh functions

n() { nap $(nap list | peco) | glow }
dl() { echo $1 >> ~/home/Downloads/dl.txt}
lg() { lazygit $1 }
search() { ddgr $1 }
hist() { peco < $HISTFILE }
fzfind() { fzf --reverse --multi --preview $'{} \n stat -c %s {} | numfmt --to=iec' }
chmodx() { sudo chmod u+x $1 } 
devdocs() { nvim -c 'DevdocsOpen' $1 }
cht() { 
  cht.sh $(gum input --placeholder "language...") \
  $(gum input --placeholder "query...") | gum pager  
}

# text editing
vfw () { nvim -c "Telescope live_grep" }
vff () { nvim -c "Telescope fd" }
vb () { nvim -c "Telescope file_browser" }

# video editing
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

# image editing
optimg() {
	PNG=false; JPG=false;
	if gum confirm "Optimize $(ls **/*.png | wc -l) png files in $(pwd)?"; then PNG=true; fi; 
	if gum confirm "Optimize $(ls **/*.jpg | wc -l) jpeg files in $(pwd)?"; then JPG=true; fi; 
	if $PNG; then for f in **/*.png; do optipng $f; done; fi;
	if $JPG; then for f in **/*.jpg; do jpegoptim $f; done; fi;
}
find-dupe() {  }
