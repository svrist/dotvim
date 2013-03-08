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
let g:pymode_folding = 0
let g:pymode_lint_ignore = ""
" Disable pylint checking every save
let g:pymode_lint_write = 1

set number
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
nnoremap <F6> :PyLint<CR>

set background=dark
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
colorscheme solarized

set expandtab
set shiftwidth=4
set softtabstop=4
:match ExtraWhitespace /\s\+\%#\@<!$/
:set colorcolumn=+1,+2,+3 
