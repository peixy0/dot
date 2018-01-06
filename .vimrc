set nocompatible
execute pathogen#infect()
syntax on
filetype plugin indent on
color dracula

set clipboard=unnamedplus
set expandtab
set fileformat=unix
set guicursor+=a:blinkon0
set guifont=Inconsolata\ 13
set guioptions+=a
set guioptions-=L
set guioptions-=m
set guioptions-=r
set guioptions-=T
set hlsearch
set ignorecase
set mouse=a
set nobackup
set noswapfile
set nowrap
set nowritebackup
set relativenumber
set shiftwidth=4
set shortmess=a
set smartcase
set smartindent
set softtabstop=4
set tabstop=4
set textwidth=0

map ; :
map <F11> :set lines=999 columns=999<CR>

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
