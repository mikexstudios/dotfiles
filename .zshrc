# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias mvim="mvim --remote-tab"
alias vimr="open -a VimR"
alias tafel-archive="7z a data.7z *.bin *.txt && rm *.bin *.txt"
alias odyssey-bkg="ssh -Y -C -o ServerAliveInterval=30 -fN odyssey"
alias mosh-athena="mosh mxh@athena.dialup.mit.edu --server='athrun mosh_project mosh-server'"
alias tunnel-ugcs="ssh -D localhost:8080 to.ugcs.caltech.edu"
alias start-postgres="postgres -D /usr/local/var/postgres"
alias python-webserver="python -m SimpleHTTPServer 8000"
alias find-quote='find . -exec echo "\"{}\"" \;'
alias docker-delete-old-containers="docker ps -q -a | xargs docker rm"
alias docker-delete-untagged-images="docker rmi \$(docker images | grep \"^<none>\" | awk '{ print \$3 }')"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rbenv git rails ruby brew gem osx autojump django)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
#For miniconda python distribution
export PATH="$HOME/.miniconda/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"
# Use brew installed sqlite3 with readline support
export PATH="/usr/local/Cellar/sqlite/3.8.11.1/bin:$PATH"
# Android SDK
export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags. Explicitly set arch flag so that ruby gems and python
# packages that run gcc don't fail when trying to compile to ppc.
export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set global gitignore
git config --global core.excludesfile ~/.gitignore-global

# For rbenv
eval "$(rbenv init -)"
#export RBENV_ROOT="$HOME/.rbenv"

#For golang
export GOPATH="$HOME/Labs/go"

#For docker-compose.
#export COMPOSE_FILE=dev.yml
