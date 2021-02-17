" my config--------------------------------------------------------------------
" simple vim setting
filetype plugin indent on
syntax enable
" hybrid line number
set nu rnu
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
" https://github.com/bfrg/vim-cpp-modern
let c_no_curly_error = 1

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

hi HopNextKey guibg=#FFFF00 guifg=#000000
hi HopNextKey1 guibg=#FFFF00 guifg=#000000
hi HopNextKey2 guibg=#FFFF00 guifg=#000000
