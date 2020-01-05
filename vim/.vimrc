call plug#begin('~/.vim/plugged')

  Plug 'scrooloose/nerdtree'
  Plug 'joshdick/onedark.vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'vim-airline/vim-airline'
  Plug 'ajh17/vimcompletesme'
  
  
call plug#end()

syntax on
colorscheme onedark

:set colorcolumn=79
:set transparency=5
:set guifont=Monaco:h18
:set number

let NERDTreeMinimalUI=1
