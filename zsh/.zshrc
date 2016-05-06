#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

alias browse="firefox"
alias psudo='sudo env PATH="$PATH"'
alias e="gvim -p --remote-tab-silent"
alias zshrc="gvim ~/.zshrc"
alias md="mkdir -p"
alias rmr="\rm -r"
alias git='noglob git'
unalias rm

# sshuttle
alias tunnel="/home/vivekrai/.sshuttle/sshuttle -r dg 0/0"

export MANPATH=$HOME/.local/man/:$MANPATH

# GPG key
export GPGKEY=820BA5F1

# For DrRacket
export PATH=$HOME/.racket/bin:$PATH

# added by Miniconda3 3.18.3 installer
export PATH=$HOME/.miniconda/bin:$PATH
export PATH=$HOME/.anaconda3/bin:$PATH

# add user bin
export PATH=$HOME/.local/bin:$PATH

# chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# texlive
export PATH=$HOME/.local/2015/bin/x86_64-linux:$PATH

# hooks
#
# auto ls when entering a directory
function chpwd() {
    emulate -L zsh
    ls --ignore=.git
}

# Matlab issue?
export J2D_D3D='false'

eval "$(thefuck --alias)"

# You can use whatever you want as an alias, like for Mondays:
eval "$(thefuck --alias FUCK)"
eval "$(thefuck --alias fuck)"
eval "$(thefuck --alias bah)"

# serve
function rubyserve {
  port="${1:-5000}"
  ruby -run -e httpd . -p $port
}

function pyserve {
  port="${1:-5000}"
  python -m http.server $port
}

# aliases
alias scwrl=Scwrl4
alias autodock=autodock4
