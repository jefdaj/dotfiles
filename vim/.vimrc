" general
set tabstop=2
colorscheme default
" set number
set ruler " row, column number of cursor
set nofoldenable
set nocompatible
execute pathogen#infect()
syntax on
filetype plugin indent on " pfplugin files are loaded here?

"set verbose=9 " for testing
augroup vimrc
  " jeffwiki, and other markdown
	" note that .md files are also overridden in after/ftplugin/vimwiki.vim
  autocmd BufNewFile,BufRead *.md   set filetype=markdown.pandoc
  autocmd BufNewFile,BufRead *.page set filetype=markdown.pandoc

  " ortholang scripts look ok with python highlighting
  autocmd BufNewFile,BufRead *.ol  set filetype=python
  autocmd BufNewFile,BufRead *.cut set filetype=python
augroup END

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

" zettelkasten
let g:nv_search_paths = ['~/myrepos/zettelkasten']
let g:vimwiki_list = [{'path':'~/myrepos/zettelkasten', 'ext': '.md', 'syntax': 'markdown'}]
let g:zettel_format = "%y%m%d%H%M"
" let g:vimwiki_syntaxlocal_vars['markdown']['Link1'] = g:vimwiki_syntaxlocal_vars['default']['Link1']
let g:zettel_options = [{"front_matter" : [["tags", "untagged"]]}]
nnoremap <leader>zn :ZettelNew<space>
