" set local working directory to 1) repo root path 2) current file
let g:ctrlp_working_path_mode = 'rc'

" ignore unimportant files
let g:ctrlp_custom_ignore = { 'dir': '\.git$\|tmp$\|public$\|vendor$\|\.bundle$\|\.gems$' }

" start CtrlP via <Leader>o
let g:ctrlp_map = '<Leader>o'

" If ag is available use it as filename list generator instead of 'find'
if executable("ag")
  let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
        \ --ignore .git
        \ --ignore .svn
        \ --ignore .hg
        \ --ignore .DS_Store
        \ -g ""'
  set grepprg=ag\ --nogroup\ --nocolor

  " cache not needed when using ag
  let g:ctrlp_use_caching = 0
endif

" could be useful for large projects
let g:ctrlp_max_files = 0

let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
