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

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme badwolf
syntax enable

set tabstop=4   " number of visual spaces per TAB
set softtabstop=4
set expandtab

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

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

