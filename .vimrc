set nocompatible            " be iMproved, required
filetype off                " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
" "All of your Plugins must be added before the following line
call vundle#end()           "required
filetype plugin indent on   "required


set t_Co=256
colorscheme torte
set cursorline
syntax enable
set number
set ruler
set ignorecase
set hlsearch 
set cindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set encoding=utf-8
set laststatus=2

" remap keys
imap jj <Esc>
"inoremap ( ()
"inoremap " "
"inoremap ' '
"inoremap [ []
"inoremap { {}


"colors
let g:molokai_original = 1
let g:rehash256 = 1
