map <buffer> <F5> :update<CR>:!python2 %<CR>
map! <buffer> <F5> <ESC>:update<CR>:!python2 %<CR>

"runtime python_fold.vim
"set foldmethod=expr
set foldmethod=indent
set foldnestmax=2
set foldminlines=3

" syntax options
let python_no_builtin_highlight = 1
let python_no_doctest_code_highlight = 1
let python_no_doctest_highlight = 1
let python_no_exception_highlight = 1
let python_no_number_highlight = 1
let python_space_error_highlight = 1

" plugins
let g:syntastic_python_checker = "flake8"
let g:syntastic_python_checker_args = "--ignore=W391,E501"
