command! -nargs=0 CdPwd :lcd %:p:h

" auto close the loclist when the buffer is closed
augroup CloseLoclistWindowGroup
    autocmd!
    autocmd QuitPre * if empty(&buftype) | lclose | endif
augroup END

" define Nrun: async run and close though a terminal
command! -complete=file -nargs=* Nrun :call s:Terminal(<q-args>)

function! s:Terminal(cmd)
    execute 'belowright 5new'
    set winfixheight
    call termopen(a:cmd, {
                \ 'on_exit': function('s:OnExit'),
                \ 'buffer_nr': bufnr('%'),
                \})
    call setbufvar('%', 'is_autorun', 1)
    execute 'wincmd p'
endfunction

function! s:OnExit(job_id, status, event) dict
    if a:status == 0
        execute 'silent! bd! '.self.buffer_nr
    endif
endfunction
