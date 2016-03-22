call pathogen#infect()
call pathogen#helptags()

set t_Co=256 

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
set synmaxcol=500     " don't try to highlight long lines
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
compiler ruby         " Enable compiler support for ruby

" colorscheme railscasts
set background=dark
colorscheme solarized

set backspace=2
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set nowrap
set nrformats=

set backupdir=$HOME/.vimbackup,.
set directory=$HOME/.vimswap,.

au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
    \ exe "normal g'\"" | endif
syntax on

au FocusLost * :wa

set ignorecase
set smartcase
set scrolloff=2
set ttyfast
set hidden
set wildmenu
set wildmode=list:longest
nnoremap <leader>nt :NERDTreeToggle<enter>

source $VIMRUNTIME/macros/matchit.vim

nnoremap <C-p> :call PickFile()<CR>
let g:pick_executable = "pick"
" nnoremap <Leader>p :call PickFile()<CR>
" nnoremap <Leader>s :call PickFileSplit()<CR>
" nnoremap <Leader>v :call PickFileVerticalSplit()<CR>
" nnoremap <Leader>t :call PickFileTab()<CR>
nnoremap <Leader>b :call PickBuffer()<CR>

" https://github.com/tpope/vim-commentary/commit/4dcfc318e0b02fdbb0c2d9ff77cf3562b46eea25
xmap \\  <Plug>Commentary
nmap \\  <Plug>Commentary

let g:ag_working_path_mode="r"
