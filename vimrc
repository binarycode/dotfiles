" key mappings
source ~/.vim/config/mapping.vim

" be iMproved
set nocompatible

" VUNDLE
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Supertab - autocompletion
Plugin 'ervandew/supertab'

" Molokai - colorscheme
Plugin 'tomasr/molokai'
source ~/.vim/config/molokai.vim

" path navigator
Plugin 'jeetsukumaran/vim-filebeagle'

" shell commands
Plugin 'tpope/vim-eunuch'

" easy commenting
Plugin 'scrooloose/nerdcommenter'

" Syntastic - syntax checking
Plugin 'scrooloose/syntastic'
source ~/.vim/config/syntastic.vim

" CtrlP - easy file navigation
Plugin 'ctrlpvim/ctrlp.vim'
source ~/.vim/config/ctrlp.vim

" Extension for CtrlP that allows to execute arbitrary commands
Plugin 'mattn/ctrlp-launcher'
source ~/.vim/config/ctrlp-launcher.vim

" Quicker matching for CtrlP
Plugin 'FelikZ/ctrlp-py-matcher'

" EasyMotion - navigation within page
Plugin 'Lokaltog/vim-easymotion'
source ~/.vim/config/easymotion.vim

" Fugitive - git wrapper
Plugin 'tpope/vim-fugitive'

" Ag wrapper
Plugin 'rking/ag.vim'

" Airline - fancy status/tabline
Plugin 'bling/vim-airline'
source ~/.vim/config/airline.vim

" Automatically end certain structures (like if, def etc)
Plugin 'tpope/vim-endwise'

" ruby support
Plugin 'vim-ruby/vim-ruby'

" Haml and Sass support
Plugin 'tpope/vim-haml'

" CoffeeScript support
Plugin 'kchmck/vim-coffee-script'

" A lot of useful rails stuff
Plugin 'tpope/vim-rails'

" Easy brackets management
Plugin 'tpope/vim-surround'

" Useful mappings
Plugin 'tpope/vim-unimpaired'

" Automatic closing of quotes, brackets etc
Plugin 'Raimondi/delimitMate'

" Change working dir to project root when file is opened
Plugin 'airblade/vim-rooter'
source ~/.vim/config/rooter.vim

" asynchronous build and test dispatcher
Plugin 'tpope/vim-dispatch'

" Simplify aligning text
Plugin 'junegunn/vim-easy-align'
source ~/.vim/config/easy-align.vim

" Simplify selecting text
Plugin 'terryma/vim-expand-region'
source ~/.vim/config/expand-region.vim

" Eco templates syntax
Plugin 'AndrewRadev/vim-eco'

" Slim templates syntax
Plugin 'slim-template/vim-slim'

" Automatic sync with remote path
Plugin 'eshion/vim-sync'

" Better JS support
Plugin 'pangloss/vim-javascript'

" JSX support
Plugin 'mxw/vim-jsx'

" ES2015 support
Plugin 'isRuslan/vim-es6'

" Ansible YAML syntax support
Plugin 'pearofducks/ansible-vim'

call vundle#end()
filetype plugin indent on
" END VUNDLE

" enable syntax highlighting
syntax on

" replace tabs with spaces
set expandtab

" number of spaces for each indent step
set shiftwidth=2

" tab size for editing operations (like <Tab> and <BS>)
set softtabstop=2

" editing operations use softtabstop value
set smarttab

" show line numbers
set number

" highlight all search matches
set hlsearch

" incremental search
set incsearch

" enable modeline
set modeline

" enable current line highligh
set cursorline

" redraw only when needed
set lazyredraw

" disable auto comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" cursor line is always at screen center
set so=999

" statusline always visible
set laststatus=2

" allow backspacing over a lot of things
set backspace=indent,eol,start

" highlight trailing whitespace
source ~/.vim/config/whitespace.vim

" enable os clipboard
if has('unnamedplus')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

" make vim work correctly with watch/livereload tools
set backupcopy=yes

set backupdir=/tmp//
set directory=/tmp//
set backupdir=/tmp//

set colorcolumn=80
