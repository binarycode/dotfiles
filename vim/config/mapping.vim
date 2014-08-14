" use spacebar as leader key
let mapleader = "\<Space>"

" hide search highlight on escape
nnoremap <esc> :noh<return><esc>

" Q to quit without saving
command! -bang Q q<bang>

" W to save
command! -bang W w<bang>

" use ; as : in command mode
nnoremap ; :

" navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" tab navigation
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tn  :tabnew<CR>
nnoremap td  :tabclose<CR>

" <Leader>p to run whole spec file
map <Leader>p :Rrunner<cr>

" <Leader>m to run spec under cursor
map <Leader>m :.Rrunner<cr>

" quick page scrolling
map J <PageDown>
map K <PageUp>

" save file
nnoremap <Leader>w :w<CR>

" close file
nnoremap <Leader>q :q<CR>

" visual line mode
nmap <Leader><Leader> V
