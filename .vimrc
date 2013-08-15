" Do not be compatible with ancient vi
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
Bundle 'mileszs/ack.vim'
Bundle 'airblade/vim-rooter'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'tpope/vim-dispatch'
Bundle 'vim-ruby/vim-ruby'
Bundle 'sjl/gundo.vim'
Bundle 'Valloric/YouCompleteMe'

filetype plugin indent on " Enable loading plugin and indent files for specific file types
syntax on " Syntax highlight

" Identation
set expandtab
set shiftwidth=2
set softtabstop=2
set smarttab

set number

" enable search highlighting and incremental search
set hlsearch
set incsearch

" Hide search highlight on escape
nnoremap <esc> :noh<return><esc>

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

" NERDTree
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
nmap <silent> <c-b> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeHighlightCursorline=1
map <leader>r :NERDTreeFind<CR>

" syntastic
let g:syntastic_enable_signs=1

" ctrlp
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_custom_ignore = { 'dir': '\.git$\|tmp$\|public$\|vendor$\|\.bundle$' }

" I type W instead of w all the time
command! -bang Q q<bang>
command! -bang W w<bang>

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

" Find merge conflict markers
nmap <silent> <leader>cf <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" misc
autocmd BufNewFile,BufRead *.thor set syntax=ruby
au BufRead,BufNewFile *.rabl setf ruby
au BufRead,BufNewFile *.pill setf ruby

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

" Use smartindent for YAML
autocmd FileType yaml setlocal smartindent

" Copy/Paste in OSX
set clipboard=unnamed

" Disable folding
set foldlevelstart=99

nmap ,cs :let @*=expand("%")<CR>
nmap ,cl :let @*=expand("%:p")<CR>

" Fugitive goodness
nnoremap <leader>g :diffget<cr>

" Use ag instead of ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" quickly run specs
map <Leader>p :Rrunner<cr>
map <Leader>m :.Rrunner<cr>

" scrolling
map J <PageDown>
map K <PageUp>
