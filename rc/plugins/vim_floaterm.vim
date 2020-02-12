let g:floaterm_width = &columns
let g:floaterm_height = 15
let g:floaterm_position = "bottomleft"
" let g:floaterm_winblend = 20
let g:floaterm_background = "2E2C2C"

" function! FloatermSettings()
"     setlocal number
" endfunction

" autocmd FileType terminal call FloatermSettings()
autocmd FileType terminal nnoremap <buffer> q :close<CR>
