set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'vim-scripts/indentpython.vim'
Plugin 'ericbn/vim-relativize'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-sensible'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'jiangmiao/auto-pairs'
Plugin 'dense-analysis/ale'
Plugin 'itchyny/lightline.vim'
Plugin 'joshdick/onedark.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" utf-8 support
set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8

" always show the status bar
set laststatus=2

" enable 256 colors
set t_Co=256
set t_ut=

" color schemes
syntax on
colorscheme onedark

" line numbering
set number relativenumber " :RelativeToggle to toggle

" turn off sound
set noeb

" highlight and strip whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0

" sane editing
set tabstop=4
set shiftwidth=4
set softtabstop=4
set colorcolumn=80
set expandtab
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType css setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2

" auto-pairs
au FileType python let b:AutoPairs = AutoPairsDefine(
            \   {"f'" : "'", "r'" : "'", "b'" : "'"})

" ale linting
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'python': ['black']
\}

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

" fix buffer on save
let g:ale_fix_on_save = 1

" python code look pretty
let python_highlight_all=1

" lightline colorscheme
let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ }
