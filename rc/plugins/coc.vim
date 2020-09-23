let g:coc_global_extensions = [
            \ 'coc-lists',
            \ 'coc-python',
            \ 'coc-tasks',
            \ 'coc-yank',
            \ 'coc-json',
            \ 'coc-vimlsp',
            \ 'coc-explorer',
            \ 'coc-vimtex',
            \ 'coc-snippets',
            \ 'coc-html',
            \ 'coc-lua',
            \ 'coc-css']

"coc normal config {{
set hidden
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c
set signcolumn=yes
" using <C-space> to trigger the completion
autocmd FileType python inoremap <silent><expr> <c-space> coc#refresh()
" }}

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

" scroll the pop-up window {{
nnoremap <expr><C-n> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-f>"
nnoremap <expr><C-p> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-b>"
" }}

" change the suggest.autoTrigger for different filetype {{
augroup switchcocsuggest
    autocmd!
    autocmd BufEnter *.cpp,*.hpp,*.h,*.c let b:coc_suggest_disable=1
    autocmd BufEnter *.vim,*.py,*.tex,*.js :call coc#config("suggest.autoTrigger", "always")
    autocmd BufEnter *.cpp,*.hpp,*.h,*.c :call coc#config("suggest.autoTrigger", "none")
augroup END

let g:coc_explorer_global_presets = {
\   'floatingRightside': {
\     'reveal': 'current buffer',
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'floating-height': &lines - 2,
\   },
\ }
