" ============================================================================
" " .vimrc
" " author: dansamargiu
" "
" ============================================================================

" ============================================================================
" " General Configuration
" "
" ============================================================================
set nocompatible
" Set leader to , for comfort
let mapleader = ","
let g:mapleader = ","
" Set vimrc to source itself on save
autocmd! bufwritepost .vimrc source ~/.vimrc

" ============================================================================
" " Visual
" "
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
" Line Numbers
set number
set relativenumber
highlight LineNr ctermbg=23
highlight LineNr ctermfg=108

" ============================================================================
" Vundle
" ============================================================================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
map <leader>n% :NERDTree %<CR>
Plugin 'kien/ctrlp.vim'
call vundle#end()
