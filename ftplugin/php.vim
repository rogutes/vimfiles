" phpfolding.vim
setlocal foldmethod=manual " Don't use the PHP syntax folding
EnableFastPHPFolds " Turn on PHP fast folds
" .. search this # of empty lines for PhpDoc comments
let g:searchPhpDocLineCount = 0
" .. search this # of empty lines that 'trail' the foldmatch
let g:searchEmptyLinesPostfixing = 0

map <buffer> <F5> :update<CR>:!php %<CR>
map! <buffer> <F5> <ESC>:update<CR>:!php %<CR>
