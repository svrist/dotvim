let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'pep8')  " Covered by python-mode
call add(g:pathogen_disabled, 'pyflakes-pathogen')  " Covered by python mode
call add(g:pathogen_disabled, 'python-mode')  " Covered by jedi-vim

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']


"call pathogen#runtime_append_all_bundles()
execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

let g:SuperTabDefaultCompletionType = "context"
let g:jedi#popup_on_dot = 0
let g:pymode_virtualenv = 1
let g:pymode_folding = 0
let g:pymode_lint_ignore = ""
let g:pymode_lint = 0
" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_rope = 1


set number
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
nnoremap <F6> :PyLint<CR>

set background=dark
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
colorscheme solarized

set expandtab
set shiftwidth=4
set softtabstop=4
match ExtraWhitespace /\s\+\%#\@<!$/
set colorcolumn=+1,+2,+3 

"set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

"""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""""
set laststatus=2 " Always show status line
"let g:airline_theme             = 'powerlineish'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#enabled = 1

" vim-powerline symbols
"let g:airline_left_sep          = '⮀'
"let g:airline_left_alt_sep      = '⮁'
"let g:airline_right_sep         = '⮂'
"let g:airline_right_alt_sep     = '⮃'
"let g:airline_branch_prefix     = '⭠'
"let g:airline_readonly_symbol   = '⭤'
"let g:airline_linecolumn_prefix = '⭡'
" }} airline"

nnoremap <F7> :GundoToggle<CR>

