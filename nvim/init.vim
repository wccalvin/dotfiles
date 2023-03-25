"---------- General -----------"
syntax enable
set t_Co=256                " 256 colors
set nocompatible            " disable compatibility to old-time vi
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
set number                  " add line numbers
set noswapfile              " disable creating swap file
set ttyfast                 " Speed up scrolling in Vim
set wildmode=longest,list   " get bash-like tab completions

"---------- Search -----------"
set hlsearch                " highlight search 
set incsearch               " incremental search
set showmatch               " show matching 
set ignorecase              " case insensitive 

"---------- Tabs and Indentation -----------"
filetype plugin indent on   "allow auto-indenting depending on file type
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set wildmode=longest,list   " get bash-like tab completions
set cursorline              " highlight current cursorline

"-------- Visual decorations -------"
" Show status line
set laststatus=2
" Show what mode you’re currently in
set showmode
" Show what commands you’re typing
set showcmd
" Allow modelines
set modeline
" Show current line and column position in file
set ruler
" Show file title in terminal tab
set title
set cursorline              " highlight current cursorline

"-------- Split panes -------"
set splitright
set splitbelow

call plug#begin('~/AppData/Local/nvim/plugged')
" below are some vim plugins for demonstration purpose.
" add the plugin you want to use here.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'navarasu/onedark.nvim'
call plug#end()

let g:onedark_config = {
    \ 'style': 'darker',
\}
colorscheme onedark
