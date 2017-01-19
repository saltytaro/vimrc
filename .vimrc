" Turn on syntax highlighting.
syntax on

" Don't use SmartIndent. Replace tabs with 4 spaces.
filetype plugin indent on
" Show existing tab with 4 spaces width.
set tabstop=4
" When indenting with '>', use 4 spaces width.
set shiftwidth=4
" On pressing tab, insert 4 spaces.
set expandtab

" Turn on line numbers
set number

" Configure Vim for LaTeX.
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
" set grepprg=grep\ -nH\ $*
"
" OPTIONAL: This enables automatic indentation as you type.
filetype indent on
"
" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults
" to
" " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" " The following changes the default filetype back to 'tex':
" let g:tex_flavor='latex'

" Auto save the current document every time there is a pause in typing.
:au! CursorHoldI,CursorHold <buffer> silent! :update
:set updatetime=800

" Set <F9> to compile C programs.
map <F9> :w <CR> :!clear && gcc % -o %< && ./%< <CR>
