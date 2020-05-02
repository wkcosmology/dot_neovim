let g:ycm_filetype_whitelist = {
            \ "c":1,
            \ "cpp":1,
            \ "h":1,
            \ "sh":1,
            \ "zsh":1,
            \ }
set completeopt=menu,menuone,noinsert,noselect
" ycm auto completion only triggered by the following symbols
" In other cases, you should use Ctrl-Space to trigger the completion
let g:ycm_semantic_triggers =  {
            \   'c,h': ['->', '.'],
            \   'cpp,hpp,cuda,objcpp': ['->', '.', '::'],
            \ }

" ---------------------------------------------------------------
" ycm config
" ---------------------------------------------------------------
"
" ---------------------------------------------------------------
"  Config file
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_use_clangd = 1 " very important!!!

" ---------------------------------------------------------------
"  diagnostic
let g:ycm_show_diagnostics_ui=0
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0

" ---------------------------------------------------------------
" trigger
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_min_num_identifier_candidate_chars = 2
" with . and ->
let g:ycm_auto_trigger = 1

" ---------------------------------------------------------------
" UI
let g:ycm_add_preview_to_completeopt=0
let g:ycm_max_num_candidates=50
let g:ycm_autoclose_preview_window_after_completion = 1

" ---------------------------------------------------------------
" identifier database
" with the keywords of the programming language you're writing
let g:ycm_use_ultisnips_completer=1
let g:ycm_collect_identifiers_from_tags_files=0
let g:ycm_collect_identifiers_from_comments_and_strings=1
let g:ycm_complete_in_strings = 1
let g:ycm_seed_identifiers_with_syntax=0

" ---------------------------------------------------------------
" Others
let g:ycm_cache_omnifunc=0
let g:ycm_disable_for_files_larger_than_kb = 1000

" ---------------------------------------------------------------
" script: display doc with floating window
function s:Hover()
    " get the doc string from YCM
    let response = youcompleteme#GetCommandResponse('GetDoc')
    if response ==# ''
        return
    endif
    " set the width
    let s:width = min([winwidth('%') * 9 / 10, 100])
    " calculate the height to show the whole doc with wrap enabled
    let lines = split(response, '\n')
    let s:height = len(lines) + 1
    for s:line in lines
        let s:height = s:height + len(s:line) / s:width
    endfor
    " nvim floating window interface
    let buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(buf, 0, -1, v:true, lines)
    let opts = {'relative': 'cursor', 'width': s:width, 'height': len(lines) + 1, 'col': 1,
                \ 'row': 0, 'anchor': 'SW', 'style': 'minimal'}
    let s:win = nvim_open_win(buf, 0, opts)
    " set the window option
    call nvim_win_set_option(s:win, 'winhl', 'Normal:NormalFloat')
    call nvim_win_set_option(s:win, 'wrap', v:true)
    call nvim_win_set_option(s:win, 'linebreak', v:true)
    " close the window once the cursor moved
    autocmd CursorMoved <buffer> ++once call nvim_win_close(s:win, v:false)
endfunction

" autocmd FileType c,cpp,h,hpp nnoremap <silent> K :call <SID>Hover()<CR>
command! YcmGetDocFloatWin :call <SID>Hover()
