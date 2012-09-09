set nocompatible

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Dependencies
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-unimpaired'
Bundle 'Raimondi/delimitMate'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'bbommarito/vim-slim'
Bundle 'mileszs/ack.vim'

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

set hlsearch

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
" List chars
set list
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the first column when wrap is
                                  " off and the line continues beyond the left of the screen
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

" syntastic
let g:syntastic_enable_signs=1

" ctrlp
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_custom_ignore = { 'dir': '\.git$\|tmp$\|public$\|vendor$\|\.bundle$' }

" I type W instead of w all the time
command! -bang Q q<bang>
command! -bang W w<bang>

" tab tweaks
map th :tabnext<CR>
map tl :tabprev<CR>
map tn :tabnew<CR>
map td :tabclose<CR>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" those pesky backups
set nobackup
set noswapfile

" EasyMotion
let g:EasyMotion_leader_key = '<Leader>'

" some good advices from nvie.com
nnoremap ; :

" find merge conflict markers
nmap <silent> <leader>cf <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" misc
autocmd BufNewFile,BufRead *.thor set syntax=ruby
au BufRead,BufNewFile *.rabl setf ruby

set so=999

" Statusline should be always visible
set laststatus=2

" Tab navigation
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tn  :tabnew<CR>
nnoremap td  :tabclose<CR>
