let g:coc_global_extensions = [
            \ 'coc-lists',
            \ 'coc-vimlsp',
            \ 'coc-python',
            \ 'coc-tasks',
            \ 'coc-yank',
            \ 'coc-json',
            \ 'coc-vimtex',
            \ 'coc-snippets',
            \ 'coc-html',
            \ 'coc-css',
            \ 'coc-tsserver']

"coc normal config {{
set hidden
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c
set signcolumn=yes
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
    autocmd FileType cpp,hpp,h,c let b:coc_suggest_disable=1
    autocmd FileType vim,python,tex,javascript :call coc#config("suggest.autoTrigger", "always")
    autocmd FileType cpp,hpp,h,c :call coc#config("suggest.autoTrigger", "none")
augroup END
" }}

" abandoned config {{
" inoremap <silent><expr> <TAB>
"             \ pumvisible() ? coc#_select_confirm() :
"             \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"             \ <SID>check_back_space() ? "\<TAB>" :
"             \ coc#refresh()
" function! s:check_back_space() abort
"     let col = col('.') - 1
"     return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
" using Esc to exit the terminal
" tnoremap <Esc> <C-\><C-n><CR>
" }}
" vim: set sw=2 ts=2 sts=2 et tw=120 foldmarker={{,}} foldmethod=marker foldlevel=0:
