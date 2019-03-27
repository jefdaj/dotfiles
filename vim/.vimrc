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

" rrr scripts look decent with python highlighting
autocmd BufNewFile,BufRead *.rrr set filetype=python

" gvim
if has("gui_running")
	set guioptions=none
endif
if has('clipboard')
	set clipboard=unnamedplus
endif
