call plug#begin('~/.vim/plugged')

Plug 'dracula/vim'
Plug 'majutsushi/tagbar'
Plug 'ntpeters/vim-better-whitespace'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'rust-lang/rust.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/ttcn-syntax'
Plug 'w0rp/ale'

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
set guioptions+=b

set autoindent
set shiftwidth=4
set textwidth=0
set tabstop=4
set softtabstop=4
set expandtab

set lazyredraw
set cursorline
set hlsearch
set ignorecase
set smartcase
set relativenumber
set nowrap
set sidescroll=1

nnoremap <S-ScrollWheelUp> 3zh
nnoremap <S-ScrollWheelDown> 3zl
nnoremap ; :
nnoremap : ;
nnoremap <Space> <Esc>:noh<CR>

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

let g:ale_enabled=0

let g:strip_whitespace_confirm=0
let g:strip_whitespace_on_save=1

augroup filetypedetect
    au BufRead,BufNewFile *.ttcn3 set filetype=ttcn
augroup END
