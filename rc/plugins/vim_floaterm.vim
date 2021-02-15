let g:floaterm_width = 0.99
let g:floaterm_height = 0.4
let g:floaterm_wintype = "normal"
let g:floaterm_position = "bottomleft"
let g:floaterm_background = "2E2C2C"
hi FloatermBorder guibg='#323232' guifg='#235219178'
hi Floaterm guibg='#323232'

autocmd FileType floaterm nnoremap <buffer> q :close<CR>
