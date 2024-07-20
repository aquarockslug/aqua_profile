tmux set -g prefix C-p
tmux bind -n ^h select-pane -L
tmux bind -n ^j select-pane -D
tmux bind -n ^k select-pane -U
tmux bind -n ^l select-pane -R
tmux bind -n C-w kill-pane # ^w doesn't work?
tmux bind -T prefix P split-window -v -c "#{pane_current_path}"
tmux bind -T prefix p split-window -h -c "#{pane_current_path}"
tmux bind -T prefix h select-window -t -1
tmux bind -T prefix l select-window -t +1
tmux set -g mouse on
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then tmux; fi
