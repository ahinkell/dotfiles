
syntax on 

" begin Vundle
set nocompatible		" be iMproved, required
filetype off			" required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
Plugin 'scrooloose/nerdtree'
Plugin 'PyCQA/pep8'

call vundle#end()		" required

filetype on
filetype plugin indent on	" required

" allow for colors
set t_Co=256
set laststatus=2
    
set backspace=2		" Backspace deletes like most programs in insert mode
set ruler	" show the cursor position all the time
set incsearch	" do incremental searching
set number      " show line numbers
set showmatch   " show the matching part of the pair for [] {} and ()
set cursorline " show a visual line under the cursor's current line

" Softtabs, 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set autoindent

" easy window navigation
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" alert when using arrow keys, for practice
nnoremap <left> :echoe "use h"<cr>
nnoremap <Right>:echoe "Use l"<CR>      
nnoremap <Up> :echoe "Use k"<CR>        
nnoremap <Down> :echoe "Use j"<CR>      

" python syntax highlighting
let python_highlight_all = 1
