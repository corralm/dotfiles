# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
  eval "$__conda_setup"
else
  if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
    . "/opt/anaconda3/etc/profile.d/conda.sh"
  else
    export PATH="/opt/anaconda3/bin:$PATH"
  fi
fi
unset __conda_setup
# <<< conda initialize <<<
  
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# plugins
plugins=(
  autoupdate
  git
  macos
  vscode
  zsh-autosuggestions
  zsh-safe-rm
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# custom aliases
alias c="clear"
alias cp="cp -i"
alias mv="mv -i"
alias ..="cd .."
alias ...="cd ../.."
alias manp="man-preview"
alias zshrc='code ~/.zshrc'
alias l="ls -1F | nl"                   # List files sorted in a single column
alias ll="ls -lFhot"                    # List files as long list, show size, type, human-readable (sorted)
alias la="ls -lAFhot"                   # List all files as a long list, show size, type, human-readable (sorted)

# custom functions
cd() { builtin cd "$@"; ls; }
glf() { glog --all --grep="$1"; }