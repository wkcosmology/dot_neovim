let g:floaterm_width = 0.9
let g:floaterm_height = 0.7
let g:floaterm_wintype = 'normal'
let g:floaterm_position = 'center'
let g:floaterm_title = 'Terminal($1/$2)'
hi FloatermBorder guibg=Normal guifg=DarkYellow
hi Floaterm guibg=Normal

autocmd FileType floaterm nnoremap <buffer> q :close<CR>


let g:fzf_floaterm_newentries = {
  \ '+terminal' : {
    \ 'title': 'Terminal' },
  \ '+ipython' : {
    \ 'title': 'IPython',
    \ 'cmd': 'ipython' },
  \ }
