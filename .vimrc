let g:ycm_use_clangd = 1

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'Valloric/YouCompleteMe'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/c.vim'
Plug 'ericcurtin/CurtineIncSw.vim'

call plug#end()

"To enable the tools for cmake or doxygen by c.vim plugin
let g:C_UseTool_cmake='yes'
let g:C_UseTool_doxygen='yes' 

"Set a keyboard for ericcurtin/CurtineIncSw.vim plugin
map <F5> :call CurtineIncSw()<CR>

set number
set expandtab
set tabstop=3

set hlsearch
set incsearch

set mouse=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif

set backspace=indent,eol,start

"mappings
map <C-m> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
