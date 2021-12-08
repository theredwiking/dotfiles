set path+=**
set tabstop=4
set shiftwidth=4
set expandtab
set number
set relativenumber

call plug#begin(stdpath('data') . '/plugged')

Plug 'drewtempelmeyer/palenight.vim'

call plug#end()
colorscheme palenight
set termguicolors
