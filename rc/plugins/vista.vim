" config
let g:vista_sidebar_width=50
let g:vista_echo_cursor_strategy='echo'
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_echo_cursor=0
let g:vista#renderer#enable_icon=0
" let g:vista_executive_for = {
"       \ 'py': 'coc',
"       \ 'php': 'vim_lsp',
"       \ }
let g:vista_default_executive = 'ctags'
let g:vista_cursor_delay=10
let g:vista_keep_fzf_colors=1
let g:vista_executive_for = {
  \ 'python': 'coc',
  \ 'cpp': 'clangd',
  \ }
