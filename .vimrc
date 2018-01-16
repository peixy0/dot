set nocompatible
execute pathogen#infect()
syntax on
filetype plugin indent on
color dracula

set noswapfile
set nobackup
set nowritebackup

set encoding=utf-8
set fileformat=unix
set clipboard=unnamedplus
set mouse=a
set shortmess=a
set showcmd

set guicursor+=a:blinkon0
set guifont=Hack\ 11
set guioptions+=a
set guioptions-=L
set guioptions-=m
set guioptions-=r
set guioptions-=T

set smartindent
set shiftwidth=4
set textwidth=0
set tabstop=4
set softtabstop=4
set expandtab

set hlsearch
set ignorecase
set smartcase
set relativenumber
set nowrap
set sidescroll=1

map ; :
map <F11> :set lines=999 columns=999<CR>
map <S-ScrollWheelUp> 3zh
map <S-ScrollWheelDown> 3zl

map <F7> :NERDTreeToggle<CR>
let NERDTreeChDirMode=2
let NERDTreeMinimalUI=1
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let NERDTreeWinSize=35

let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''

let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:10,results:20'
let g:ctrlp_max_history = 0
let g:ctrlp_regexp = 1
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn)$',
            \ 'file': '\v\.(o|a|pyc)$'
            \ }

autocmd BufEnter * EnableStripWhitespaceOnSave
