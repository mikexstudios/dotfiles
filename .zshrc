# Base zsh / oh-my-zsh setup
export ZSH="/home/mikeh/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Base configurations
export PATH="${HOME}/bin:${PATH}"
export EDITOR="vim"

# Aliases
# TODO: Add pyenv, golang, nvm.

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
