call plug#begin('~/.vim/plugged')

  Plug 'itchyny/lightline.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'joshdick/onedark.vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'ajh17/vimcompletesme'
  
  
call plug#end()

syntax on
colorscheme onedark

:set colorcolumn=79
:set guifont=Monaco:h18
:set rnu
:set blur=20
:set transparency=10

let g:lightline = {
      \ 'colorscheme': 'one',
      \ }
:set laststatus=2

let NERDTreeMinimalUI=1
map <F1> :NERDTreeToggle<CR>
map <F2> :setlocal spell! spelllang=en_gb<CR>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
