" Title: .vimrc
" Description: file that stores all settings for vim CLI app

"This is a comment
set number
set relativenumber
set nowrap
syntax on

"Adjust tab size to 3 spaces
set tabstop=3
set shiftwidth=3
set expandtab

"uDev: add macro to insert Shebang '#!/bin/bash'
"uDev: add macro to insert New Line + echo

"Enable Mouse scrolling and selecting
set mouse=a

"Display indentation
":set noexpandtab | retab! 4

"Set syntax highlighting
filetype plugin on
syntax on

"Making .sh thr defaulf filetype for bash
let g:is_bash=1

"With the vim open, type this to know which syntax is the one found to highlight
":windo echo b:current_syntax

"When opening a file, return to last cursor position where you were the last time you opened and closed the file.
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
