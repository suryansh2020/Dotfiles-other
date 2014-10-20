# Path to your oh-my-zsh configuration.

ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

ZSH_THEME="robbyrussell"
#ZSH_THEME="bira"

DEFAULT_USER=vivekrai
alias psudo='sudo env PATH="$PATH"'

# Example aliases
alias zshconfig="gvim ~/.zshrc"
alias ohmyzsh="gvim ~/.oh-my-zsh"
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

export UNITY_LOW_GFX_MODE=1

# set locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
#COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
#
plugins=(git ssh-agent autopep8 git-extras zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export EDITOR=gvim

# texlive exports
export MANPATH=/usr/local/texlive/2013/texmf/doc/man:$MANPATH
export INFOPATH=/usr/local/texlive/2013/texmf/doc/info:$INFOPATH

#WeChall keys/Warboxes 
export WECHALLUSER="xtinct"

# export NCBI BLAST+ bin path
export PATH=$HOME/.rbenv/bin:/home/vivekrai/.ncbi-blast-2.2.29+/bin:$PATH

# rbenv init
eval "$(rbenv init -)"

# attach tmux
if [[ "$TERM" != "screen-256color" ]] then
    tmux -2 attach-session -t "$USER" || tmux -2 new-session -s "$USER"
    exit
fi

# misc path exports
export PATH=$HOME/.cabal/bin:$PATH
export PATH=$PATH:/usr/lib/postgresql/9.3/bin
PATH=$HOME/.gem/bin:$PATH
GEM_HOME=$HOME/.gem
GEM_PATH=$HOME/.gem

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:/usr/racket/bin:$PATH"
