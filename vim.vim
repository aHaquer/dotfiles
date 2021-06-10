syntax on
colorscheme default
set ts=4
set mouse=a
set autoindent
set shiftwidth=4
set softtabstop=4
set number

au BufNewFile,BufRead *.py
    \ set expandtab       |" replace tabs with spaces
    \ set autoindent      |" copy indent when starting a new line
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
