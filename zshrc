ZSH=$HOME/.oh-my-zsh

ZSH_THEME="candy"

plugins=(git rails bundler vi-mode)

source $ZSH/oh-my-zsh.sh

export PATH=$HOME/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/sbin
export EDITOR='vim'
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
