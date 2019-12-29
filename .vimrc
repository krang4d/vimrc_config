let g:ycm_use_clangd = 1

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Valloric/YouCompleteMe'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/c.vim'
Plug 'ericcurtin/CurtineIncSw.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'easymotion/vim-easymotion'

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
map <silent> <leader><leader> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"let mapleader=","
let &path.="/usr/include/,/usr/include/c++/7"

"EasyMotion binding start
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap <leader>s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
"nmap <leader>s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
"EasyMotion binding end
