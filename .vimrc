call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'dracula/vim'
Plug 'majutsushi/tagbar'
Plug 'ntpeters/vim-better-whitespace'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'

call plug#end()


syntax on
filetype plugin indent on
colorscheme dracula

set noswapfile
set nobackup
set nowritebackup

set encoding=utf-8
set fileformat=unix
set clipboard=unnamedplus
set mouse=a
set shortmess=at
set showcmd

set guicursor+=a:blinkon0
set guifont=Inconsolata\-g\ for\ Powerline\ 11
set guioptions+=a
set guioptions-=L
set guioptions-=m
set guioptions-=r
set guioptions-=T
set guioptions-=e

set autoindent
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

nnoremap <S-ScrollWheelUp> 3zh
nnoremap <S-ScrollWheelDown> 3zl
nnoremap ; :
nnoremap <Space> :noh<CR>
nnoremap <F11> :set lines=999 columns=999<CR>

let g:tagbar_vertical=20
let g:tagbar_sort=0

nnoremap <F7> :NERDTreeToggle \| TagbarToggle<CR>
let g:NERDTreeWinPos="right"
let g:NERDTreeChDirMode=2
let g:NERDTreeMinimalUI=1
let g:NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden=1
let g:NERDTreeWinSize=60
let g:NERDTreeIgnore=['\.pyc$', '\~$']

let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''

let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_match_window='bottom,order:ttb,min:1,max:10,results:20'
let g:ctrlp_max_history=0
let g:ctrlp_regexp=1
let g:ctrlp_working_path_mode=0
let g:ctrlp_custom_ignore={
            \ 'dir':  '\v[\/]\.(git|hg|svn)$',
            \ 'file': '\v\.(o|a|pyc)$'
            \ }

autocmd BufEnter * EnableStripWhitespaceOnSave
