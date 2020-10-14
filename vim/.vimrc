" general
colorscheme default
set number
set nofoldenable
set nocompatible
execute pathogen#infect()
syntax on
filetype plugin indent on

" jeffwiki
autocmd BufNewFile,BufRead *.md   set filetype=pandoc
autocmd BufNewFile,BufRead *.page set filetype=pandoc

" ortholang scripts look decent with python highlighting
autocmd BufNewFile,BufRead *.cut set filetype=python
autocmd BufNewFile,BufRead *.ol  set filetype=python

" gvim
if has("gui_running")
	set guioptions=none
endif
if has('clipboard')
	set clipboard=unnamedplus
endif
