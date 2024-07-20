source ${0:A:h}/aqua_functions.zsh
source ${0:A:h}/aqua_theme.zsh
source ${0:A:h}/aqua_tmux.zsh

zstyle ':omz:update' mode auto 
export EDITOR='nvim'
export MANPATH="/usr/local/man:$MANPATH"
export DISABLE_AUTO_TITLE='true'

# apps
alias p="python"
alias py="python"
alias s="sudo"
alias b="buku --suggest"
alias fx="felix"
alias open="wsl-open"

# nvim
alias v="nvim"
alias vi="nvim"
alias vnim="nvim"

# system
alias tasks="ps aux"
alias fd="sudo fdisk -l"
alias df="duf"
alias du="dust"
alias cat="bat"
alias ls="exa -l"
alias top="htop"
alias cls="clear && ls"

bindkey ' ' magic-space
