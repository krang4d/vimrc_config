call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

call plug#end()

set number
set expandtab
set tabstop=3

set hlsearch
set incsearch

set mouse=a

"mappings

map <C-m> :NERDTreeToggle<CR>

