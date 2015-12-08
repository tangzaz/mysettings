" Configuration file for vim
set modelines=0		" CVE-2007-2438
filetype off
"let g:molokai_original = 1
let g:solarized_termtrans = 1
" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
call vundle#end()
filetype plugin indent on
set backspace=2		" more powerful backspacing
set tabstop=4
set shiftwidth=4
set autoindent
syntax enable
"colorscheme molokai
colorscheme solarized
let g:go_highlight_functions = 1
highlight NonText guibg=#060606
highlight Folded guibg=#0A0A0A guifg=#909090
" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup
