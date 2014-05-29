" show hidden files
let NERDTreeShowHidden=1

" close explorer after opening a file
let NERDTreeQuitOnOpen=1

" do not use fancy arrows for folders
let NERDTreeDirArrows=0

" open explorer via <Ctrl-b>
nmap <silent> <c-b> :NERDTreeToggle<CR>

" open explorer with current file via <Leader>r
map <leader>r :NERDTreeFind<CR>
