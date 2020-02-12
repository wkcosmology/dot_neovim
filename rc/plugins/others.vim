" my config--------------------------------------------------------------------
" simple vim setting
if &compatible
  set nocompatible
endif
filetype plugin indent on
syntax enable
set number
set relativenumber
set cursorline!
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" set colorcolumn
set colorcolumn=120

" indent multi times
vnoremap < <gv
vnoremap > >gv
" spell check for markdown file
autocmd BufRead,BufNewFile *.md setlocal spell

" quickfix window: open quickfix window when something add to it
augroup vimrc
  autocmd QuickFixCmdPost * botright copen 8
augroup END

" let the cursor in the previous place
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ execute "normal! g`\"" |
  \ endif

" python 
let g:python3_host_prog = "/Users/wangk/anaconda3/bin/python3"
