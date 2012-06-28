set nocompatible
filetype plugin indent on
set backspace=indent,eol,start " backspace over everything in insert
set viminfo=  " no history by default, please
set noswapfile  " leave less traces by default

" === Vim UI ===
set ruler  " show the cursor position all the time
set ignorecase  " be case-insensitive
set number  " turn on line numbers
set virtualedit=all  " cursor can be positioned where there is no character
set display=lastline " show as much of the final (wrapped) line as there is space
set clipboard=unnamed,autoselect,exclude:cons\|linux
set mouse=a

" syntax and search highlighting on color terminals and GUI
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif
set incsearch  " do incremental searching
set scrolloff=4  " Keep this many lines (top/bottom) for scope
set sidescrolloff=4  " Keep this mnay lines (left/right) for scope
set sidescroll=10 " scroll by cols horizontally, when wrapping is off
set foldmethod=marker
let g:is_bash=1  " default sh syntax

if has("gui_running")
  " use Shift+Insert to paste Selection
  map! <S-Insert> <MiddleMouse>
  set guioptions=ct  " console dialogs, tearoff
  set guicursor=a\:blinkon0 " don't blink, please
  set guiheadroom=0 " The number of pixels subtracted from the screen height when fitting the GUI window on the screen.
endif

" === Text Formatting/Layout ===
set softtabstop=2 " keep tabstop=8, pretend it's 2
set shiftwidth=2 " how many spaces to use when autoindenting
au FileType python setlocal shiftwidth=4
set expandtab " tabs are spaces
set smarttab " backspace deletes 'shiftwidth' spaces
set linebreak " wrap lines at words
set showbreak=+++\  " show '+++ ' before each wrapped line
set formatoptions+=t " text formatting
set formatoptions-=o " no comment leader for 'oO'
set formatoptions+=c " format comments
set formatoptions+=n " auto numbering
set formatoptions+=q " format comments with 'gq'
set formatoptions+=r "comment leader for <Enter>
" For all text files set 'textwidth' to 78 characters.
autocmd FileType text setlocal textwidth=78
set autoindent
"set smartindent "  interferes with filetype ('#' is always shifted to the left)
set completeopt+=longest,menuone
imap <C-F> <C-X><C-O>
" fallback omni completion
autocmd Filetype *
	\	if &omnifunc == "" |
	\	setlocal omnifunc=syntaxcomplete#Complete |
	\	endif

" === Plugins ===
" netrw settings
let g:netrw_dirhistmax=0 " do not keep netrw history
let g:netrw_http_cmd="curl -o"
let g:netrw_fastbrowse=2 " cache aggressively (stops flicker in gvim) 
let g:netrw_banner=0 " do not show the help banner at the top
let g:netrw_timefmt="[%F %R]"

" === Mappings ===
noremap ;; :%s```g<Left><Left><Left>
" save
noremap <F2> :update<CR>
noremap! <F2> <ESC>:update<CR>
" switch buffers
map <C-s> <C-^>
" Q for formatting (instead of ex mode)
map Q gq
" make
map <F5> :update<CR>:make<CR>
map! <F5> <ESC>:update<CR>:make<CR>
