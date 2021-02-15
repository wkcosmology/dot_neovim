" set completeopt=menuone,noinsert,noselect

" " Use <Tab> and <S-Tab> to navigate through popup menu
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" " Set completeopt to have a better completion experience
" set completeopt=menuone,noinsert,noselect

" " Avoid showing message extra message when using completion
" set shortmess+=c

" let g:completion_enable_snippet = 'UltiSnips'
" let g:completion_enable_auto_signature = 0
" let g:completion_enable_auto_hover = 0


" lua require 'lspconfig'.pyls.setup{on_attach=require'completion'.on_attach}
" lua require 'lspconfig'.clangd.setup{on_attach=require'completion'.on_attach; cmd={'clangd' ,'--completion-style=detailed'}}
