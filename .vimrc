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
set softtabstop=4
set encoding=utf-8
set laststatus=2

" remap keys
imap jj <Esc>
inoremap ( ()<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i


" vim-plug
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'honza/vim-snippets'
call vundle#end()            " required
filetype plugin indent on    " required
