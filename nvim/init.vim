syntax on
filetype plugin on

set number
set relativenumber
set smartindent
set autoindent
set shiftwidth=4
set softtabstop=4
set ttimeoutlen=100
set ignorecase
set smartcase
set clipboard+=unnamedplus

" >>> key mapping >>>
noremap ; :
noremap . >
noremap , <


" >>> vim-plug >>>
" Install vim-plug if not found
if empty(glob('~/.config/nvim/autoload'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.fgit.ml/junegunn/vim-plug/master/plug.vim
    "\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" TODO: conditionally activate plug
let g:plugproxy = 'https://hub.fgit.ml/'
call plug#begin('~/.config/nvim/plugged')
Plug 'https://github.com/tpope/vim-surround.git'
Plug g:plugproxy .. 'gcmt/wildfire.vim'
Plug g:plugproxy .. 'tpope/vim-commentary'
call plug#end()


if !exists('g:vscode')
    " ordinary Neovim
else
    " VScode extension
endif
