set shell=/bin/sh

set number
set cursorline
set mouse=a
" copy-paste to system clipboard
"https://stackoverflow.com/questions/30691466/what-is-difference-between-vims-clipboard-unnamed-and-unnamedplus-settings
set clipboard^=unnamed,unnamedplus
syntax on
set tabstop=4
set expandtab
set autoindent
set softtabstop=4
set incsearch
set hlsearch
" set foldmethod=indent
" nnoremap <space> za
set background=dark

" Plugins via vim-plug
call plug#begin()

" https://github.com/junegunn/seoul256.vim"
Plug 'junegunn/seoul256.vim'

" https://github.com/morhetz/gruvbox
Plug 'morhetz/gruvbox'

call plug#end()

" :PlugUpdate on first launch
" colorscheme desert
colorscheme seoul256
colorscheme gruvbox
