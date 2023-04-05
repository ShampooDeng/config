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
Plug g:plugproxy .. 'sainnhe/everforest'
call plug#end()


" >>> Colorscheme >>>
if has('termguicolors')
  set termguicolors
endif

" For dark version.
set background=dark

" For light version.
" set background=light

" Set contrast.
" This configuration option should be placed before `colorscheme everforest`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'medium'

" For better performance
let g:everforest_better_performance = 1

colorscheme everforest


" >>> Config for neovim vscode extension >>>
if !exists('g:vscode')
    " ordinary Neovim

    " >>> key mapping >>>
    " Map Ctrl-Backspace to delete the previous word in insert mode.
    " solution: https://vim.fandom.com/wiki/Map_Ctrl-Backspace_to_delete_previous_word
    " noremap! <C-BS> <C-w>
    imap <C-BS> <C-w>
else
    " VScode extension
endif

