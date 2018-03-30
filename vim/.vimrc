" general
colorscheme elflord
set number
set nofoldenable
set nocompatible

" filetype off
execute pathogen#infect()
syntax on
filetype plugin indent on
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" Plugin 'VundleVim/Vundle.vim'
" Plugin 'vim-pandoc/vim-pandoc'
" Plugin 'vim-pandoc/vim-pandoc-syntax'
" Plugin 'LnL7/vim-nix'
" call vundle#end()
" filetype plugin indent on

" jeffwiki
autocmd BufNewFile,BufRead *.page set filetype=pandoc

" cut scripts look kind of ok with python highlighting
autocmd BufNewFile,BufRead *.cut set filetype=python

" gvim
if has("gui_running")
	set guioptions=none
endif
if has('clipboard')
	set clipboard=unnamedplus
endif
