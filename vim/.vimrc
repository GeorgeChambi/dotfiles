call plug#begin('~/.vim/plugged')

  Plug 'itchyny/lightline.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'joshdick/onedark.vim'
  Plug 'ajh17/vimcompletesme'
  Plug 'vim-python/python-syntax'
  Plug 'tmhedberg/SimpylFold'
  Plug 'nvie/vim-flake8'
 
call plug#end()


colorscheme onedark

set colorcolumn=79      " pep8 line
set guifont=Monaco:h18  " set font size
set nu rnu              " relative line number with line number (hybrid) 
set cursorline          " highlight line on cursor position
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set foldmethod=indent
set foldlevel=99

" gvim settings 
set transparency=10     " transparency for gvim
set blur=20             " blur gvim window

" syntax highlighting 
let python_highlight_all=1
syntax on

let g:lightline = {
      \ 'colorscheme': 'one',
      \ }
set laststatus=2

let NERDTreeMinimalUI=1 
let NERDTreeQuitOnOpen=1 " close after opening file

map <F1> :NERDTreeFind<CR>
map <F2> :setlocal spell! spelllang=en_gb<CR>
map <F3> :nohlsearch<CR>
map <F4> :set cc=<CR>
map <F8> :call flake8#Flake8()<CR>

" auto close
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" navigate windows using ctrl+hjkl
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" fold with spacebar instead of za
nnoremap <space> za
