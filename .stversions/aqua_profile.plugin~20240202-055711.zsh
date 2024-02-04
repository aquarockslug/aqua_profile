source ${0:A:h}/aqua_functions.zsh
source ${0:A:h}/aqua_theme.zsh

zstyle ':omz:update' mode auto 
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then tmux; fi
export EDITOR='nvim'
export MANPATH="/usr/local/man:$MANPATH"

# Nap config
export PATH="$PATH:/usr/local/go/bin"
export NAP_DEFAULT_LANGUAGE="md"
export NAP_THEME="dracula"
export NAP_PRIMARY_COLOR="#AFBEE1"
export NAP_RED="#A46060"
export NAP_GREEN="#527251"
export NAP_FOREGROUND="7"
export NAP_BACKGROUND="0"
export NAP_BLACK="#373B41"
export NAP_GRAY="240"
export NAP_WHITE="#FFFFFF"
