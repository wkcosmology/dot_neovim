" set the height of the quickfix window
let g:asyncrun_open = 10

" show the output in floaterm, this is slow, abandoned
" function! s:runner_proc(opts)
"   let curr_bufnr = floaterm#curr()
"   if has_key(a:opts, 'silent') && a:opts.silent == 1
"     call floaterm#hide()
"   endif
"   let cmd = 'cd ' . shellescape(getcwd())
"   call floaterm#terminal#send(curr_bufnr, [cmd])
"   call floaterm#terminal#send(curr_bufnr, [a:opts.cmd])
"   stopinsert
"   if &filetype == 'floaterm' && g:floaterm_autoinsert
"     call floaterm#util#startinsert()
"   endif
" endfunction

" let g:asyncrun_runner = get(g:, 'asyncrun_runner', {})
" let g:asyncrun_runner.floaterm = function('s:runner_proc')
" let g:asynctasks_term_pos='floaterm'
