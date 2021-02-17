hi HopMessage guifg=Yellow

function! MyHop(mode)
  echohl HopMessage
  if a:mode ==# 'char1'
        echo 'Search for 1 character:  '
        echohl None
        execute 'HopChar1'
        redraw
        echo 'Target Key:  '
    elseif a:mode ==# 'char2'
        echo 'Search for 2 character:  '
        execute 'HopChar2'
        redraw
        echo 'Target Key:  '
    elseif a:mode ==# 'word'
        execute 'HopWord'
    elseif a:mode ==# 'line'
        execute 'HopLine'
    endif
  echohl None
endfunction

command MyHopChar1 :call MyHop('char1')
command MyHopChar2 :call MyHop('char2')
command MyHopWord :call MyHop('word')
command MyHopLine :call MyHop('line')
