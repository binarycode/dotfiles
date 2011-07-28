set nocompatible

" pathogen
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

syntax on

" identation
set expandtab
set shiftwidth=2
set softtabstop=2
set smarttab
set smartindent " TESTING

set number

set cursorline

" enable modeline
set modeline

" colorscheme
set t_Co=256
let g:molokai_original=1
colo molokai

" disable auto-comment feature
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" autocomplete
set ofu=syntaxcomplete#Complete
set completeopt=longest

" show special symbols
set listchars=tab:»·,trail:·,eol:¶

" allow russian in commands
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" clean pasting
inoremap <silent> <F2> <ESC>u:set paste<CR>.:set nopaste<CR>gi

" quickly move between tabs
map <C-k> :tabn<CR>
map <C-j> :tabp<CR>

" create new tab
map <C-n> :tabnew<CR>

" remove gui bells and whistles
set guioptions-=m
set guioptions-=T
set guioptions-=R
set guioptions-=r
set guioptions-=L
set guioptions-=l

" copy/paste workaround
" TODO this should be replaced with
set clipboard=unnamed
"set clipboard=unnamedplus
" but this clipboard type is availible in vim version that is not in ubuntu
" ppa yet

" NERDTree
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
nmap <silent> <c-b> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeHighlightCursorline=1

" Command-T
let g:CommandTMaxHeight=7
nmap <silent> <F3> :CommandT<CR>
nmap <Leader>r :CommandTFlush<CR>
set wildignore+=vendor/ruby/**

" vim-fugitive
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2

" syntastic
let g:syntastic_enable_signs=1
