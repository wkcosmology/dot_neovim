command! -nargs=0 CdPwd :lcd %:p:h


" auto close the loclist when the buffer is closed
augroup CloseLoclistWindowGroup
    autocmd!
    autocmd QuitPre * if empty(&buftype) | lclose | endif
  augroup END
