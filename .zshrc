# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias tafel-archive="7z a data.7z *.bin *.txt && rm *.bin *.txt"
alias gmvault-sync="gmvault sync mike.huynh@gmail.com --db-dir=~/Dropbox/Backup/gmvault/ --encrypt"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git rails ruby rbenv brew vundle)
plugins=(git rails ruby brew gem osx autojump django)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Explicitly set arch flag so that ruby gems and python packages that run gcc
# don't fail when trying to compile to ppc.
export ARCHFLAGS="-arch i386 -arch x86_64"

# Set global gitignore
git config --global core.excludesfile ~/.gitignore-global

#For rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH="$HOME/bin:/usr/local/sbin:$PATH"

#For node-js and installed modules
export PATH="$PATH:/usr/local/share/npm/bin"
export NODE_PATH="/usr/local/lib/node:/usr/local/lib/node_modules:/usr/local/share/npm/lib/node_modules"

#For jmol
export PATH="$HOME/bin/jmol-13.0.12:$PATH"

#For gmvault
export PATH="$PATH:$HOME/bin/gmvault-v1.8.1-beta/bin"

#For ec2-api-tools (installed with brew)
export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"

#For go
export GOPATH="$HOME/.go"
 
#For bats (bash testing)
export PATH="$PATH:$HOME/bin/bats/bin"

#For anaconda
export PATH="$PATH:$HOME/Documents/Labs/miniconda/bin"
