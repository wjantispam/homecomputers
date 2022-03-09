"
"  :so %    " source this file
"
let g:solarized_termtrans = 1
colorscheme solarized8_flat

filetype plugin indent on
syntax on
set number
set hidden " Allow switching buffers without writing to disk
set wildignore+=*.pyc,*.pyo,__pycache__
set backspace=indent,eol,start
set noswapfile

set clipboard=unnamed " so you can copy from other programs to vim
set number relativenumber    " use :set nu! rnu! to toggle it on or off

let $RTP=split(&runtimepath, ',')[0]
let $RC="$HOME/.vim/vimrc"
set path=.,** 

" Python
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent smartindent
