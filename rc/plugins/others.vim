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
set expandtab
set smartindent
set softtabstop=2
set shiftwidth=2

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

" sort import
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" python 
let g:python3_host_prog = "/Users/wangk/anaconda3/bin/python3"
