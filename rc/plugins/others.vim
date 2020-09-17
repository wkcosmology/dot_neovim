" my config--------------------------------------------------------------------
" simple vim setting
filetype plugin indent on
syntax enable
set number
set relativenumber
" set cursorline!
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" set colorcolumn
set colorcolumn=120

" set smartcase
set ignorecase
set smartcase

" indent multi times
vnoremap < <gv
vnoremap > >gv

" let the cursor in the previous place
augroup keepcursorpos
    autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                \ execute "normal! g`\"" |
                \ endif
augroup END

" python 
let g:python3_host_prog = '/Users/wangk/anaconda3/bin/python3'
let g:python_host_prog = '/Users/wangk/anaconda3/bin/python3'

" spell check
augroup lexical
  autocmd!
  autocmd FileType markdown,mkd,tex call lexical#init()
augroup END
