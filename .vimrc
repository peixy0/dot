set nocompatible
execute pathogen#infect()
syntax on
filetype plugin indent on
color dracula

set fileformat=unix
set guicursor+=a:blinkon0
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11
set guioptions-=L
set guioptions-=m
set guioptions-=r
set guioptions-=T
set guioptions+=a
set hlsearch
set ignorecase
set nobackup
set noswapfile
set nowrap
set nowritebackup
set number
set shortmess=a
set smartcase
set smartindent
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
set textwidth=0

map <F11> :set lines=999 columns=999<CR>

map <C-LeftMouse> :Gtags<CR><CR>
map <C-RightMouse> :Gtags -r<CR><CR>

map <F7> :NERDTreeToggle<CR>
let NERDTreeChDirMode=2
let NERDTreeMinimalUI=1
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let NERDTreeWinSize=35

let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''

autocmd BufWritePre * %s/\s\+$//e

