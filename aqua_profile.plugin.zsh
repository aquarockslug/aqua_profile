source ${0:A:h}/aqua_functions.zsh
source ${0:A:h}/aqua_theme.zsh

zstyle ':omz:update' mode auto 
export EDITOR='nvim'
export MANPATH="/usr/local/man:$MANPATH"

# apps
alias py="python"
alias s="sudo"
alias b="buku --suggest"
alias fx="felix"

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

# windows
alias open="cmd.exe /C start"
alias explore="explorer.exe"

bindkey ' ' magic-space

# tmux
tmux set -g prefix C-p
tmux bind -n ^h select-pane -L
tmux bind -n ^j select-pane -D
tmux bind -n ^k select-pane -U
tmux bind -n ^l select-pane -R
tmux bind -n C-w kill-pane # ^w doesn't work
tmux bind -T prefix : split-window -v -c "#{pane_current_path}"
tmux bind -T prefix '\;' split-window -h -c "#{pane_current_path}"
tmux set -g mouse on
tmux set history-limit 100000
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then tmux; fi
