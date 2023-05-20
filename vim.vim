syntax on
colorscheme default
set ts=4
set mouse=a
set autoindent
set shiftwidth=4
set softtabstop=4
set number
set hlsearch

au BufNewFile,BufRead *.py
    \ set expandtab       |" replace tabs with spaces
    \ set autoindent      |" copy indent when starting a new line
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4

" Below is stuff nim.vim https://github.com/zah/nim.vim

" Vundle shit
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
Bundle 'zah/nim.vim'
"Bundle 'scrooloose/syntastic'

filetype plugin indent on     " required

fun! JumpToDef()
	  if exists("*GotoDefinition_" . &filetype)
		      call GotoDefinition_{&filetype}()
			    else
					    exe "norm! \<C-]>"
						  endif
					  endf

					  " Jump to tag
					  " nn <M-g> :call JumpToDef()<cr>
					  " ino <M-g> <esc>:call JumpToDef()<cr>i

set paste

