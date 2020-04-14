" coc config
set hidden
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c
set signcolumn=yes
" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" let coc server begins 500ms after vim start
let g:coc_start_at_startup=0
function! CocTimerStart(timer)
    exec "CocStart"
endfunction
call timer_start(500,'CocTimerStart',{'repeat':1})
" forbid coc for file size > 0.5MB
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

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" scroll the pop-up window
nnoremap <expr><C-n> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-f>"
nnoremap <expr><C-p> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-b>"
" using Esc to exit the terminal
tnoremap <Esc> <C-\><C-n><CR>
" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

autocmd FileType cpp,hpp,h,c let b:coc_suggest_disable = 1

" exploer
let g:coc_explorer_global_presets = {
\   'default':{
\      'position': 'floating',
\      'floating-position': 'right-center',
\      'floating-width': 80,
\      'floating-height': -4,
\      'file.child.template': '[git | 2][selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]',
\   }
\ }

