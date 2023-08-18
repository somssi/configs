set nocompatible
filetype off
filetype plugin indent on

inoremap <C-g> <ESC>
nnoremap <SPACE> <Nop>
let mapleader=" "

set hidden
set encoding=utf-8
set formatoptions-=tc

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

syntax on
set history=500
set shiftwidth=4
set tabstop=4
set expandtab
set ruler
set hlsearch
set number
set backspace=indent,eol,start

" Custom Bindings
map [t :tabprevious<cr>
map ]t :tabnext<cr>
map [T :-tabmove<cr>
map ]T :+tabmove<cr>
map tq :tabclose<cr>
map te :tabedit<cr>

map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>
map gq :bp<bar>sp<bar>bn<bar>bd<CR>
map gq :bp<bar>sp<bar>bn<bar>bd<CR>
map gb :BufstopModeFast<cr>

map <Up> <C-w>k
map <Down> <C-w>j
map <Left> <C-w>h
map <Right> <C-w>l

nnoremap <leader>e :tabe ~/.config/nvim/init.vim<CR>
nnoremap <leader>r :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>] :bnext<CR>
nnoremap <leader>[ :bprevious<CR>
nnoremap <leader>d :bd<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>p :GFiles<CR>
nnoremap <leader>w :Windows<CR>
nnoremap <leader>q :qa<CR>

" Plugin Installation
call plug#begin()

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'jnurmine/Zenburn'

Plug 'easymotion/vim-easymotion'
Plug 'bling/vim-airline'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

" Color Scheme
colorscheme zenburn

" Plugin Settings
let g:limelight_conceal_ctermfg = 'DarkGray'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

let g:NERDTreeWinSize=50
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
