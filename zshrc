ZSH=$HOME/.oh-my-zsh

ZSH_THEME="candy"
RBENV_ROOT=$HOME/.rbenv

plugins=(git rails bundler vi-mode rbenv)

source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/sbin
export EDITOR='vim'
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
