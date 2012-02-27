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

" remove gui bells and whistles
set guioptions-=m
set guioptions-=T
set guioptions-=R
set guioptions-=r
set guioptions-=L
set guioptions-=l

" NERDTree
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
nmap <silent> <c-b> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeHighlightCursorline=1

" vim-fugitive
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2

" syntastic
let g:syntastic_enable_signs=1

" ctrlp
let g:ctrlp_custom_ignore = { 'dir': '\.git$\|tmp$\|public$\|vendor$\|\.bundle$' }

" misc
autocmd BufNewFile,BufRead *.thor set syntax=ruby

set so=999
