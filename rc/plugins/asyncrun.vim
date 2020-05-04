let g:asyncrun_open = 10
command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>
