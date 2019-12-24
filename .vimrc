let g:ycm_use_clangd = 1

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Valloric/YouCompleteMe'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/c.vim'

call plug#end()

let g:C_UseTool_cmake='yes'
let g:C_UseTool_doxygen='yes' 

set number
set expandtab
set tabstop=3

set hlsearch
set incsearch

set mouse=a
set backspace=indent,eol,start

"mappings
map <C-m> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
