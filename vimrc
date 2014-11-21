set nocompatible
filetype off

" encoding
set encoding=utf8

" file
filetype plugin indent on
set autoread
set noswapfile

" tab and indent
set autoindent
set tabstop=4
set shiftwidth=2
set expandtab
set smarttab
set ai
set si

" code
set number
syntax on

" search
set hlsearch
set incsearch

" theme
let g:solarized_termcolors=256
set background=dark

let mapleader = ";"

" ====== Keys ======

" apply macros with Q
nnoremap Q @q
vnoremap Q :norm @q<cr>

" quicker indentation
nnoremap > >>
nnoremap < <<
nnoremap = == 

" dont loose selection on indenting
vnoremap > >gv
vnoremap < <gv

" dot works in visual selection mode!
vnoremap . :norm.<cr>

" D deletes to the end of the line
nnoremap D d$

" Y yanks to the end of the line
nnoremap Y y$

" better line begin (H) and end (L)
noremap H ^
noremap L $
vnoremap L g_

map <leader>c caw

map <leader>w :w!<cr>
map <leader>q :q!<cr>
map <leader>e :wq<cr>
map <silent> <leader><cr> :noh<cr>

map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" switch line
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" change cursor position in insert mode
inoremap <C-h> <left>
inoremap <C-l> <right>
inoremap <C-j> <down>
inoremap <C-k> <up>
