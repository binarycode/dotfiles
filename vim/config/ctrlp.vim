" set local working directory to 1) repo root path 2) current file
let g:ctrlp_working_path_mode = 'rc'

" ignore unimportant files
let g:ctrlp_custom_ignore = { 'dir': '\.git$\|tmp$\|public$\|vendor$\|\.bundle$' }

" start CtrlP via <Ctrl-o>
let g:ctrlp_map = '<c-o>'
