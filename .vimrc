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

" plug
call plug#begin('~/.vim/plugged')
" 可以快速對齊
Plug 'junegunn/vim-easy-align'
" 用來提供一個導航目錄的側邊欄
Plug 'scrooloose/nerdtree'
" 可以使nerdtree 的 tab 更友好
Plug 'jistr/vim-nerdtree-tabs'
" 自動補全括號
Plug 'majutsushi/tagbar'
" Vim 狀態列外掛
Plug 'vim-airline/vim-airline'
" 配色方案
Plug 'KeitaNakamura/neodark.vim'
Plug 'crusoexia/vim-monokai'
Plug 'acarapetis/vim-colors-github'
Plug 'rakr/vim-one'

" vim 使用 tab 補全
Plug 'vim-scripts/SuperTab'
" autocomplete
Plug 'Shougo/neocomplete.vim'
" vim code block
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"""" For language
"""" golang """"
Plug 'fatih/vim-go' ,{'tag':'*'}
Plug 'dgryski/vim-godef'
call plug#end()

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

" gopls
let g:go_gopls_enalbed=0 
