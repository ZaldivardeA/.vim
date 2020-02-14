set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'preservim/nerdtree'
Plugin 'sbdchd/neoformat'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" set termguicolors
colorscheme badwolf
syntax enable

" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab
set softtabstop=2

set number relativenumber
set nu rnu

set showcmd

set cursorline

filetype indent on

set wildmenu
set lazyredraw
set showmatch

set incsearch
set hlsearch

let mapleader=","
nnoremap <leader><space> :nohls<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

" Formatter options
" format on save .js
autocmd BufWritePre *.js undojoin | Neoformat
nnoremap <leader>f :Neoformat<CR>
augroup NeoformatAutoFormat
    autocmd!
    autocmd FileType javascript,javascript.jsx setlocal formatprg=prettier\
                                             \--stdin\
                                             \--print-width\ 80\
                                             \--single-quote\
                                             \--trailing-comma\ es5
    autocmd BufWritePre *.js,*.jsx Neoformat
augroup END
" Use formatprg when available
let g:neoformat_try_formatprg = 1
