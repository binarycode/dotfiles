" enable tabline
let g:airline#extensions#tabline#enabled = 1

" do not show buffers in tabline
let g:airline#extensions#tabline#show_splits = 0

" fix airline sluggishness
set fillchars=diff:·

let g:airline_extensions = ['tabline']
