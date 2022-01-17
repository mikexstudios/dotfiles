# Base zsh / oh-my-zsh setup
export ZSH="/home/mikeh/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Base configurations
export PATH="${HOME}/bin:${PATH}"
export EDITOR="vim"

# Aliases
alias python-server="python3 -m http.server 8000"

# TODO: Add pyenv, golang.

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# fly.io
export FLYCTL_INSTALL="$HOME/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

# deno
export DENO_INSTALL="/home/mikeh/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
