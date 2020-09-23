""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fast editing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the leader to space
let mapleader=' '
" use Esc to exit terminal
tnoremap <Esc> <C-\><C-n><CR>
" tagbar
nmap <F8> :TagbarToggle<CR>
" alias to left and right in insert mode
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-n> <Down>
inoremap <C-p> <Up>
inoremap <C-a> <Home>
inoremap <C-e> <End>
" alias to left and right in command mode
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
" Use <C-L> to clear the highlighting of :set hlsearch.
nnoremap <silent> <C-l> :nohlsearch<cr>
" quit vim (disabled, since mistouch a lot) 
" nnoremap <silent> <leader>qq :qall<cr>
" easy motion setting
nmap <silent> <leader>jj <Plug>(easymotion-overwin-f)
nmap <silent> <leader>jl <Plug>(easymotion-bd-jk)
nmap <silent> <leader>js <Plug>(easymotion-overwin-f2)
nmap <silent> <leader>jw <Plug>(easymotion-bd-w)
nmap <silent> <leader>je <Plug>(easymotion-bd-e)
augroup align
    autocmd!
    autocmd FileType tex,markdown xmap ga <Plug>(EasyAlign)
    autocmd FileType tex,markdown nmap ga <Plug>(EasyAlign)
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" S-group: fuzzy search
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fuzzy searching command
nnoremap <silent> <leader>: :Commands<CR>
" fuzzy search content
nnoremap <silent> <leader>ss :BLines<CR>
" fuzzy search content in project
nnoremap <silent> <leader>sp :PRg<CR>
" fuzzy search tasks
nnoremap <silent> <leader>st :AsyncTaskFzf<CR>
" yank history
nnoremap <silent> <space>sy  :FZFYank<cr>
augroup search
    autocmd!
    autocmd FileType c,h,cpp,hpp,python,javascript,vim,lua nnoremap <silent> <leader>so :BTags <CR>
    autocmd FileType tex noremap <silent><leader>so :FZFTexToc<cr>
    autocmd FileType tex noremap <silent><leader>sb :FZFBibtex<cr>
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" F-group: File related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" save the file
nnoremap <silent> <leader>fs :w<CR>
" reload the vimrc setting
nnoremap <silent> <leader>feR :so $MYVIMRC<CR>
" fuzzy search most recent file
nnoremap <silent> <leader>fr :FZFMru <CR>
" fuzzy search files under current project
nnoremap <silent> <Leader>ff :exe 'Files ' . <SID>fzf_root()<CR>
" fuzzy search for my projects
nnoremap <silent> <Leader>fp :FZFProject <CR>
" open defx file tree
nnoremap <space>ft :execute'CocCommand explorer --preset floatingRightside ' . expand('%:h')<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" B-group: buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fuzzy search buffers
nnoremap <silent> <leader>bb :Buffers <CR>
" close current buffer
nmap <silent> <leader>bd :Bwipeout<CR>
" close other buffers except the current one
nmap <silent> <leader>bD :DeleteHiddenBuffers<CR>
nmap <silent> <leader>bs :FSHere<CR>
" nmap cd call
nmap cd :call <SID>CdPwd()<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <C-t>-group: tabs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-t> <Nop>
nmap <C-t>c :tabclose<CR>
nmap <C-t>n :TabooOpen 
nmap <C-t>r :TabooRename 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" window related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" toggle zoom
nmap <C-w>m <Plug>(zoom-toggle)
" choose the window
nmap <C-w>w  <Plug>(choosewin)
" close the location list and quickfix window
nnoremap <silent> <leader>lc :ccl\|lcl<CR>
noremap <F3> :call asyncrun#quickfix_toggle(10)<cr>
" exit window using <C-g>
augroup exitwithq
    autocmd!
    autocmd FileType help,qf,defx,fugitive,list,git,gista-list nnoremap <buffer> <C-g> :close<cr>
    autocmd FileType list inoremap <buffer> <C-g> :close<cr>
    autocmd FileType floaterm tnoremap <C-g> <C-\><C-n>:close<cr>
    " unmap q
    autocmd FileType fugitive,gista-list nnoremap <buffer> q <nop>
augroup END


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" T-group Async-task/floaterm/vim-test
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup t_group
    autocmd!
    autocmd FileType c,cpp,h,cpp,python,javascript,lua noremap <silent><leader>tr :AsyncTask file-run<cr>
    autocmd FileType c,cpp,h,cpp,python,javascript,lua noremap <silent><leader>tb :AsyncTask file-build<cr>
augroup END
noremap <silent><leader>tf :AsyncTaskFzf<cr>
nnoremap <leader>tt :FloatermToggle<cr>
nnoremap <leader>tn :FloatermNew<cr>
nnoremap [t :FloatermPrev<cr><C-\><C-n><cr>
nnoremap ]t :FloatermNext<cr><C-\><C-n><cr>
" test the nearest object to the cursor
nnoremap <leader>te :TestNearest<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>gd :Gvdiffsplit!<cr>
nnoremap <leader>gdh :diffget //2<cr>
nnoremap <leader>gdl :diffget //3<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>gg :G<cr>
nnoremap <leader>gv :GV<cr>
nnoremap <leader>gl :Gclog<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gb :GBranches<cr>
nnoremap <leader>gP :Gpush<cr>
nnoremap <leader>gs :Gista list<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ale key mapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
" clear all the diagnostic 
nmap <silent> <leader>ec :ALEResetBuffer<CR>
nmap <F1> :ALEFix<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" coc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup cocmapping
    autocmd!
    autocmd FileType python,javascript,vim,lua nmap \r  <Plug>(coc-rename)
    autocmd FileType python,javascript,vim,lua nmap <silent> gd <Plug>(coc-definition)
    autocmd FileType python,javascript,vim,lua nmap <silent> gr <Plug>(coc-references)
    autocmd FileType python,javascript,vim,lua nmap <silent> gi <Plug>(coc-implementation)
    autocmd FileType python,javascript,vim,lua nmap <silent> gt <Plug>(coc-type-definition)
    autocmd FileType python,javascript,vim,lua nnoremap <silent> K :call <SID>show_documentation()<CR>
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" youcompleteme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
augroup ycmgotomap
    autocmd!
    autocmd FileType c,cpp,h,hpp nmap gd :YcmCompleter GoToInclude<cr>
    autocmd FileType c,cpp,h,hpp nmap gt :YcmCompleter GetType<cr>
    autocmd FileType c,cpp,h,hpp nmap gi :YcmCompleter GotoInclude<cr>
    autocmd FileType c,cpp,h,hpp nmap gr :YcmCompleter GoToReferences<cr>
    autocmd FileType c,cpp,h,hpp nmap K :YcmGetDocFloatWin<cr>
    autocmd FileType c,cpp,h,hpp nmap \r :YcmCompleter RefactorRename 
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" utilities
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>ud :UndotreeToggle<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! CloseFloatingWin execute 'windo call <SID>closefloatingwin()'
command! DeleteHiddenBuffers call DeleteHiddenBuffers()
" trim space
command! TrimSpace execute':%s/\s\+$//e'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" scripts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" show documentation
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" script for closing the floating window
fun! s:closefloatingwin()
    if &filetype ==# 'floaterm'
        execute 'close'
    elseif &filetype ==# 'fzf'
        execute 'close'
    elseif &filetype ==# 'undotree'
        execute 'close'
    elseif &filetype ==# 'defx'
        execute 'close'
    endif
endf

" close all hidden buffers
if !exists('*DeleteHiddenBuffers') " Clear all hidden buffers when running
    function DeleteHiddenBuffers() " Vim with the 'hidden' option
        let tpbl=[]
        call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
        for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
            silent execute 'bwipeout' buf
        endfor
    endfunction
endif

"  find .git for project
fun! s:fzf_root()
    let path = finddir('.git', expand('%:p:h').';')
    return fnamemodify(substitute(path, '.git', '', ''), ':p:h')
endfun

" cd the path of current buffer
fun s:CdPwd()
    execute 'lcd %:p:h'
    echo 'Enter path >> ' . expand('%:p:h')
endf

