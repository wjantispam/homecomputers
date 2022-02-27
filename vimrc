let g:solarized_termtrans = 1
colorscheme solarized8_high

filetype plugin indent on
syntax on
set number
set hidden " Allow switching buffers without writing to disk
set wildignore+=*.pyc,*.pyo,__pycache__
set backspace=indent,eol,start
set noswapfile

set shiftwidth=4 "Indenting is 4 spaces
set softtabstop=4 " same for softtabstop for consistency
set expandtab " Don't use actual tab (use space instead)

set clipboard=unnamed " so you can copy from other programs to vim
set number relativenumber    " use :set nu! rnu! to toggle it on or off

let $RTP=split(&runtimepath, ',')[0]
let $RC="$HOME/.vim/vimrc"
set path=.,** 
