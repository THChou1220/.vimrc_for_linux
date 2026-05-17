set nu
set ai
set cursorline
set bg=light
set tabstop=4
set shiftwidth=4
set formatoptions+=r
set history=100
set incsearch
set t_Co=256
set cindent
set showmode
set wrap
set encoding=utf-8
set fileencodings=utf-8,utf-16,big5,gb2312,gbk,gb18030,euc-jp,euc-kr,latin1

colo default

filetype indent on

hi LineNr cterm=bold ctermfg=208 ctermbg=None
hi CursorLineNr cterm=bold ctermfg=40 ctermbg=234
hi CursorLine cterm=None ctermfg=None ctermbg=234

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'

call plug#end()

let mapleader = " "

nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <C-p> :Files<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
