" set the runtime path to include Vundle and initialize
"
set nocompatible " required
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'
" Install YCM Bundle
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'SirVer/ultisnips'
Plugin 'elzr/vim-json'
Plugin 'honza/vim-snippets'
Plugin 'justinmk/vim-sneak'
Plugin 'kien/ctrlp.vim'
Plugin 'ludovicchabant/vim-lawrencium'
Plugin 'majutsushi/tagbar'
Plugin 'mhinz/vim-signify'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdcommenter'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tyru/open-browser.vim'


" Color schemes
Plugin 'vim-scripts/a.vim'

" Required, plugins available after.
call vundle#end()
filetype plugin indent on

set encoding=utf-8
set t_Co=256
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
" Color
colorscheme detorte
let g:detorte_theme_mode = 'dark'
" remap keys
imap jj <Esc>

let g:python3_host_prog = '/usr/bin/python3'
let g:python2_host_prog = '/usr/bin/python2'
