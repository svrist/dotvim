call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
execute pathogen#infect()
syntax on
filetype plugin indent on
set background=dark
let g:SuperTabDefaultCompletionType = "context"
let g:jedi#popup_on_dot = 0