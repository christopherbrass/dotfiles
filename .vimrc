set shell=/bin/sh

set number
set cursorline
set mouse=a
set clipboard^=unnamed,unnamedplus

syntax on

set tabstop=4
set expandtab
set autoindent
set softtabstop=4

" set foldmethod=indent
" nnoremap <space> za

set incsearch
set hlsearch

" set background=dark





call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'junegunn/seoul256.vim'

call plug#end()

" PlugUpdate
" autocmd vimenter * ++nested colorscheme gruvbox
colorscheme seoul256
colorscheme gruvbox
" colorscheme desert