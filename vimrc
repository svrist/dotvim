let g:pathogen_disabled = []

call add(g:pathogen_disabled, 'pep8')  " Covered by python-mode
call add(g:pathogen_disabled, 'pyflakes-pathogen')  " Covered by python mode


call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
execute pathogen#infect()
syntax on
filetype plugin indent on

let g:SuperTabDefaultCompletionType = "context"
let g:jedi#popup_on_dot = 0

set number
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

set background=dark
colorscheme solarized
