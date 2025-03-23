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
alias wsl-shutdown="wsl.exe --terminate $WSL_DISTRO_NAME"

# TODO: golang.

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# fly.io
export FLYCTL_INSTALL="$HOME/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

# deno
export DENO_INSTALL="/home/mikeh/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# pyenv
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

# pip
export PATH="${HOME}/.local/bin:${PATH}"

# golang
export PATH="${HOME}/go/bin:${HOME}/bin/go/bin:${PATH}"
