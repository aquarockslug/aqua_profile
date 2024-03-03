source ${0:A:h}/aqua_functions.zsh
source ${0:A:h}/aqua_theme.zsh

zstyle ':omz:update' mode auto 
export EDITOR='nvim'
export MANPATH="/usr/local/man:$MANPATH"

# apps
alias py="python"
alias s="sudo"
alias b="buku --suggest"
alias f="felix"

# nvim
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
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

# tmux
tmux bind -n ^h select-pane -L
tmux bind -n ^j select-pane -D
tmux bind -n ^k select-pane -U
tmux bind -n ^l select-pane -R
tmux bind -n ^w kill-pane
tmux bind -n C-\\ split-window -h -c "#{pane_current_path}"
tmux bind -n C-M-\\ split-window -v -c "#{pane_current_path}"
tmux set -g prefix C-p
tmux set -g mouse on
tmux set history-limit 100000
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then tmux; fi
