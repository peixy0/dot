call plug#begin('~/.vim/plugged')

Plug 'dracula/vim'
Plug 'honza/vim-snippets'
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'mbbill/undotree'
Plug 'ntpeters/vim-better-whitespace'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'rust-lang/rust.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/ttcn-syntax'

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
set guifont=Inconsolata\-g\ 11
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

let mapleader=" "

nnoremap ; :
nnoremap : ;
nnoremap <Leader><Space> <Esc>:noh<CR>
nnoremap <Leader>be <Esc>:BufExplorer<CR>
nnoremap <Leader>u <Esc>:UndotreeToggle<CR>
nnoremap <Leader>p <Esc>:GFiles<CR>

let g:tagbar_vertical=20
let g:tagbar_sort=0

nnoremap <F7> :NERDTreeToggle<CR>
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
let g:airline#extensions#branch#enabled=0

let g:strip_whitespace_confirm=0
let g:strip_whitespace_on_save=1

let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

augroup filetypedetect
    au BufRead,BufNewFile *.ttcn3 set filetype=ttcn
augroup END

let g:fzf_layout={ 'window': 'enew' }
if executable('ag')
  let $FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -U -g ""'
endif

"setlocal spell
"set spelllang=en
" inoremap <C-l> <C-g>u<Esc>[s1z=`]a<C-g>u
