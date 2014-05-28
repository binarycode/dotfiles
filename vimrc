" VUNDLE
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'Raimondi/delimitMate'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'bling/vim-airline'
Plugin 'mileszs/ack.vim'
Plugin 'airblade/vim-rooter'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-dispatch'
Plugin 'vim-ruby/vim-ruby'
Plugin 'sjl/gundo.vim'
Plugin 'slim-template/vim-slim'

" Supertab - autocompletion
Plugin 'ervandew/supertab'
source ~/.vim/config/supertab.vim

" Molokai - colorscheme
Plugin 'tomasr/molokai'
source ~/.vim/config/molokai.vim

filetype plugin indent on
" END VUNDLE

source ~/.vim/config/whitespace.vim

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

" disable auto-comment feature
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" NERDTree
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
nmap <silent> <c-b> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeHighlightCursorline=1
let g:NERDTreeDirArrows=0
map <leader>r :NERDTreeFind<CR>

" syntastic
let g:syntastic_enable_signs=1

" ctrlp
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_custom_ignore = { 'dir': '\.git$\|tmp$\|public$\|vendor$\|\.bundle$' }
let g:ctrlp_map = '<c-o>'

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
if has('unnamedplus')
  set clipboard=unnamedplus
elseif has('unnamed')
  set clipboard=unnamed
endif

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

" User airline for tabs also
let g:airline#extensions#tabline#enabled = 1
" Fix airline sluggishness
set fillchars=diff:·

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
