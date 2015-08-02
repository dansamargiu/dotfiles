" ============================================================================
" .vimrc
" author: dansamargiu
" ============================================================================
" ============================================================================
" General Configuration
" ============================================================================
set nocompatible
" Set leader to , for comfort
let mapleader = ","
let g:mapleader = ","
" Set vimrc to source itself on save
autocmd! bufwritepost .vimrc source ~/.vimrc
" Set swapfile dir to tmp
set swapfile
set dir=~/tmp
" ============================================================================
" Visual
" ============================================================================
syntax on
set hlsearch
set background=dark
" Set tabs and eol to show up as characters
set listchars=tab:▸\ ,eol:¬
set list
" Always use spaces, width 2
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
" ============================================================================
" Vundle
" ============================================================================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
map <C-n> :NERDTreeToggle<CR>
call vundle#end()
" ============================================================================
" Keep this section at the bottom of vimrc
" ============================================================================
filetype plugin indent on

