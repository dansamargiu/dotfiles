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

" Undo file
set undofile
set undodir=$HOME/.vim/undo

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

" Line Numbers
set number
set relativenumber

" Auto-save because I always forget to save buffers
set autoread autowrite

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
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn\|\.git5_specs$\|review$',
  \ 'file': '\.exe$\|\.so$\|\.dll$',
  \ 'link': 'blaze-bin\|blaze-genfiles\|blaze-google3\|blaze-out\|blaze-testlogs\|READONLY$',
  \ }

Plugin 'Raimondi/delimitMate'
Plugin 'Lokaltog/powerline'
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

call vundle#end()
