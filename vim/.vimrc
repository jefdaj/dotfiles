" general
set tabstop=2
colorscheme default
" set number
set ruler " row, column number of cursor
set nofoldenable
set nocompatible
execute pathogen#infect()
syntax on
filetype plugin indent on

" jeffwiki
autocmd BufNewFile,BufRead *.md   set filetype=pandoc
autocmd BufNewFile,BufRead *.page set filetype=pandoc

" ortholang scripts look ok with python highlighting
autocmd BufNewFile,BufRead *.ol  set filetype=python
autocmd BufNewFile,BufRead *.cut set filetype=python
autocmd BufNewFile,BufRead *.ol  set filetype=python

" gvim
if has("gui_running")
	set guioptions=none
endif
if has('clipboard')
	set clipboard=unnamedplus
endif

" use unicode by default
set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc
