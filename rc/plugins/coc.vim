let g:coc_global_extensions = [
            \ 'coc-lists',
            \ 'coc-tasks',
            \ 'coc-clangd',
            \ 'coc-html',
            \ 'coc-jedi',
            \ 'coc-yank',
            \ 'coc-json',
            \ 'coc-vimlsp',
            \ 'coc-explorer',
            \ 'coc-vimtex',
            \ 'coc-snippets',
            \ 'coc-github',
            \ 'coc-html',
            \ 'coc-lua',
            \ 'coc-css']

"coc normal config
set hidden
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c
set signcolumn=yes

" manual trigger completion
autocmd BufEnter * inoremap <silent><expr> <c-space> coc#refresh()

" let coc server begins 500ms after vim start {{
let g:coc_start_at_startup=0
function! CocTimerStart(timer)
    exec 'CocStart'
endfunction
call timer_start(500,'CocTimerStart',{'repeat':1})
" }}

" forbid coc for file size > 0.5MB {{
let g:trigger_size = 0.5 * 1048576
augroup hugefile
    autocmd!
    autocmd BufReadPre *
                \ let size = getfsize(expand('<afile>')) |
                \ if (size > g:trigger_size) || (size == -2) |
                \   echohl WarningMsg | echomsg 'WARNING: altering options for this huge file!' | echohl None |
                \   exec 'CocDisable' |
                \ else |
                \   exec 'CocEnable' |
                \ endif |
                \ unlet size
augroup END
"}}

" scroll the pop-up window
inoremap <silent><expr> <c-j> coc#float#has_scroll() ? coc#float#scroll(1) : "\<c-j>"
inoremap <silent><expr> <c-k> coc#float#has_scroll() ? coc#float#scroll(0) : "\<c-k>"
vnoremap <silent><expr> <c-j> coc#float#has_scroll() ? coc#float#scroll(1) : "\<c-j>"
vnoremap <silent><expr> <c-k> coc#float#has_scroll() ? coc#float#scroll(0) : "\<c-k>"

" config coc explorer
let g:coc_explorer_global_presets = {
\   'floatingRightside': {
\     'reveal': 'current buffer',
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'floating-height': &lines - 2,
\   },
\ }
