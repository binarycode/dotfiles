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
set smartindent

" enable modeline
set modeline

" selecting with mouse
set mouse=a

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
map <A-1> 1gt
map <A-2> 2gt
map <A-3> 3gt
map <A-4> 4gt
map <A-5> 5gt
map <A-6> 6gt
map <A-7> 7gt
map <A-8> 8gt
map <A-9> 9gt

" create new tab
map <C-t> :tabnew<CR>

" remove gui bells and whistles
set guioptions-=m
set guioptions-=T
set guioptions-=R
set guioptions-=r
set guioptions-=L
set guioptions-=l

" copy/paste workaround
source $VIMRUNTIME/mswin.vim
behave mswin
" TODO this should be replaced with
" set clipboard=unnamedplus
" but this clipboard type is availible in vim version that is not in ubuntu
" ppa yet

" NERDTree
nmap <silent> <c-b> :NERDTreeToggle<CR>

" Command-T
let g:CommandTMaxHeight=7
nmap <silent> <F3> :CommandT<CR>
nmap <Leader>r :CommandTFlush<CR>
set wildignore+=vendor/ruby/**

" vim-fugitive
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2
