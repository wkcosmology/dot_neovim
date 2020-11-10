" required by vimtex
let g:tex_conceal = ''
let g:vimtex_compiler_progname = 'nvr'
let g:tex_flavor = 'latex'
let g:indentLine_fileTypeExclude = ['tex']
let g:vimtex_compiler_tectonic = {
        \ 'backend' : 'nvim',
        \ 'background' : 1,
        \ 'build_dir' : '',
        \ 'options' : [
        \   '--keep-logs',
        \   '--synctex'
        \ ],
        \}
" disable quickfix
let g:vimtex_quickfix_enabled=1
let g:vimtex_quickfix_open_on_warning=0
" let g:vimtex_quickfix_latexlog = {'default' : 0}
"
" auto formatting
let g:vimtex_format_enabled=1

augroup vimtex
  au!
  au User VimtexEventCompileSuccess execute 'VimtexView'
augroup END

" config for viewing though Skim
let g:vimtex_view_method = 'skim'
let g:vimtex_view_automatic = 1
let g:vimtex_view_general_viewer
        \ = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'
" This adds a callback hook that updates Skim after compilation
let g:vimtex_compiler_callback_hooks = ['UpdateSkim']
function! UpdateSkim(status)
    if !a:status | return | endif

    let l:out = b:vimtex.out()
    let l:tex = expand('%:p')
    let l:cmd = [g:vimtex_view_general_viewer, '-r']

    if !empty(system('pgrep Skim'))
        call extend(l:cmd, ['-g'])
    endif

    if has('nvim')
        call jobstart(l:cmd + [line('.'), l:out, l:tex])
    elseif has('job')
        call job_start(l:cmd + [line('.'), l:out, l:tex])
    else
        call system(join(l:cmd + [line('.'), shellescape(l:out), shellescape(l:tex)], ' '))
    endif
endfunction

