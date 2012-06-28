set viminfo&

" load plugins from .vim/bundle
call pathogen#infect()

if has('gui_running')
  colorscheme rootwater
  "colorscheme lucius
  "colorscheme soso
  set guifont=M+\ 1mn\ Medium\ 14
else
  "colorscheme soso
  colorscheme kellys
endif

let mapleader=","
set spelllang=lt,en,de,ru

" -- plugins --
" jump to the first detected error when saving or opening a file
let g:syntastic_auto_jump=1
let g:cssColorVimDoNotMessMyUpdatetime = 1
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabLongestEnhanced = 1
set hidden " LustyExplorer wants this

" fugitive (TODO: map only under some Buf* command)
map <Leader>s :Gstatus<CR>
" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_max_menu_width = 30
let g:neocomplcache_manual_completion_start_length = 2
let g:neocomplcache_disable_auto_complete = 1
