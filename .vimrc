set nocompatible
execute pathogen#infect()
syntax on
filetype plugin indent on
color dracula

set clipboard=unnamedplus
set expandtab
set fileformat=unix
set guicursor+=a:blinkon0
set guifont=Hack\ 11
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
set sidescroll=1
set smartcase
set smartindent
set softtabstop=4
set tabstop=4
set textwidth=0

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

let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn)$',
            \ 'file': '\v\.(o|a|pyc)$'
            \ }
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:10,results:20'
let g:ctrlp_max_history = 0
let g:ctrlp_regexp = 1
let g:ctrlp_working_path_mode = 0

autocmd BufWritePre * %s/\s\+$//e
