" File: keymapping.vim
" Author: Kai Wang
" Created: 2021/02/18 
" Description: Keymapping in vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fast editing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the leader to space
let mapleader=' '
" use Esc to exit terminal
tnoremap <Esc> <C-\><C-n><cr>
" Let Y yank to the line end
nnoremap Y y$
" tagbar
nnoremap <silent> <leader>vv :Vista<cr>
" work around https://github.com/liuchengxu/vista.vim/issues/385
" nnoremap <silent> <leader>vs :call vista#finder#fzf#Run('coc')<cr>
" alias to left and right in insert mode
inoremap <C-f> <Right>
inoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
" Use <C-L> to clear the highlighting of :set hlsearch.
nnoremap <silent> <C-l> :nohlsearch<cr>
" easy motion setting
nmap <silent> <leader>jj <Plug>(easymotion-overwin-f)
nmap <silent> <leader>jl <Plug>(easymotion-bd-jk)
nmap <silent> <leader>js <Plug>(easymotion-overwin-f2)
nmap <silent> <leader>jw <Plug>(easymotion-bd-w)
nmap <silent> <leader>je <Plug>(easymotion-bd-e)
" nmap <silent> <leader>jj :call MyHop('char1')<cr>
" nmap <silent> <leader>jw :call MyHop('word')<cr>
" nmap <silent> <leader>jl :call MyHop('line')<cr>
augroup align
    autocmd!
    autocmd FileType tex,markdown xmap ga <Plug>(EasyAlign)
    autocmd FileType tex,markdown nmap ga <Plug>(EasyAlign)
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" S-group: fuzzy search
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fuzzy searching command
nnoremap <silent> <leader>: :Commands<cr>
" fuzzy search content
nnoremap <silent> <leader>ss :Snippets<cr>
" fuzzy search terminal
nnoremap <silent> <leader>sg :Floaterms<cr>
" yank history
nnoremap <silent> <space>sy  :CocFzfList yank<cr>
" marks
nnoremap <silent> <space>sm :Marks<cr>
augroup search
    autocmd!
    autocmd BufEnter * nnoremap <silent> <leader>so :BTags<cr>
    autocmd BufEnter *.tex noremap <silent><leader>so :FZFTexToc<cr>
    autocmd BufEnter *.tex noremap <silent><leader>sb :FZFBibtex<cr>
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" P-group: Project related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fuzzy search for my projects
nnoremap <silent> <Leader>pp :FZFProject <cr>
nnoremap <silent> <leader>ps :call SearchPRg()<bar>redraw<cr>
" fuzzy search files under current project
nnoremap <silent> <Leader>pf :FZFProjectFile<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" F-group: File related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" save the file
nnoremap <silent> <leader>fs :w<cr>
" fuzzy search most recent file
nnoremap <silent> <leader>fr :FZFMru --preview '~/.vim/plugged/fzf.vim/bin/preview.sh {}'<cr>
" open defx file tree
nnoremap <silent> <Leader>ft :execute'CocCommand explorer --preset floatingRightside ' . expand('%:p:h')<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" B-group: buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fuzzy search buffers
nnoremap <silent> <leader>bb :Buffers <cr>
" close current buffer
nmap <silent> <leader>bd :Bdelete<cr>
" close other buffers except the current one
nmap <silent> <leader>bD :DeleteHiddenBuffers<cr>
" buffer switch, switch header/source
nmap <leader>bs :FSHere<cr>
" nmap cd call
nmap cd :call <SID>CdPwd()<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <C-t>-group: tabs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-t> <Nop>
nmap <C-t>n :TabooOpen 
nmap <C-t>r :TabooRename 
nmap <C-t>c :tabclose<cr>
nmap <C-t>h :tabprevious<cr> 
nmap <C-t>l :tabnext<cr> 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" window related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" toggle zoom
let g:maximizer_default_mapping_key = '<C-w>m'
" choose the window
nmap <C-w>w  <Plug>(choosewin)
" close the location list and quickfix window
nnoremap <silent> <leader>lc :ccl\|lcl<cr>
noremap <silent> <F3> :call asyncrun#quickfix_toggle(10)<cr>
" exit window using <C-g>
cmap <silent> <C-g> <esc><bar>:echon<cr>
augroup exitwithq
    autocmd!
    autocmd FileType fzf,help,qf,defx,fugitive,list,git,gista-list,fugitiveblame nnoremap <buffer> <C-g> :close<cr>
    autocmd FileType fzf,help,qf,defx,fugitive,list,git,gista-list inoremap <buffer> <C-g> :close<cr>
    autocmd FileType list inoremap <buffer> <C-g> :close<cr>
    autocmd FileType floaterm tnoremap <C-g> <C-\><C-n>:close<cr>
    autocmd FileType floaterm inoremap <C-g> <C-\><C-n>:close<cr>
    autocmd FileType floaterm nnoremap <C-g> :close<cr>
    autocmd FileType floaterm nnoremap q :close<cr>
    " unmap q
    autocmd FileType fugitiveblame,fugitive,gista-list nnoremap <buffer> q <nop>
augroup END


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" T-group Async-task/terminal/vim-test
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <silent> <leader>tf :AsyncTaskFzf<cr>
nnoremap <leader>tt :FloatermToggle<cr>
nnoremap <leader>tn :FloatermNew<cr>

augroup t_group
    autocmd!
    autocmd FileType c,cpp,h,cpp,python,javascript,lua noremap <silent><leader>tr :AsyncTask file-run<cr>
    autocmd FileType c,cpp,h,cpp,python,javascript,lua noremap <silent><leader>tb :AsyncTask file-build<cr>
augroup END

augroup floaterm
    autocmd!
    autocmd FileType floaterm nnoremap <buffer> [t :FloatermPrev<cr><C-\><C-n><cr>
    autocmd FileType floaterm nnoremap <buffer> ]t :FloatermNext<cr><C-\><C-n><cr>
augroup END
" test the nearest object to the cursor
nnoremap <leader>te :TestNearest<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>gd :Gvdiffsplit!<cr>
nnoremap <leader>gh :diffget //2<cr>
nnoremap <leader>gl :diffget //3<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>gg :G<cr>
nnoremap <leader>gv :GV<cr>
nnoremap <leader>gb :GBranches<cr>
nnoremap <leader>gm :Gblame<cr>
nnoremap <leader>gP :Git push<cr>
nnoremap <leader>gp :Git pull<cr>
nnoremap <leader>gs :Gista list<cr>

" " hunk related
" nnoremap <silent> <leader>hs :lua require"gitsigns".stage_hunk()<cr>
" nnoremap <silent> <leader>hu :lua require"gitsigns".undo_stage_hunk()<cr>
" nnoremap <silent> <leader>hr :lua require"gitsigns".reset_hunk()<cr>
" nnoremap <silent> <leader>hp :lua require"gitsigns".preview_hunk()<cr>
" nnoremap <silent> <leader>hb :lua require"gitsigns".blame_line()<cr>

command FloatermNewLazyGit :FloatermNew 
            \ --height=0.9 --width=0.8 --wintype=float
            \ --name=lazygit --position=center --autoclose=2
            \ lazygit
nnoremap <leader>gt :execute 'lcd %:p:h'<bar>:FloatermNewLazyGit<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ale key mapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
" clear all the diagnostic 
nmap <silent> <leader>ec :ALEResetBuffer<cr>
nmap <F1> :ALEFix<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" coc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap \r  <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gt <Plug>(coc-type-definition)
nnoremap <silent> K :call <SID>show_documentation()<CR>

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
            silent execute 'bwipeout!' buf
        endfor
    endfunction
endif

"  find .git for project
fun! s:fzf_root()
    let path = finddir('.git', expand('%:p:h').';')
    return fnamemodify(substitute(path, '.git', '', ''), ':p:h')
endfun
command FZFProjectFile :execute'Files ' . <SID>fzf_root()

" cd the path of current buffer
fun s:CdPwd()
    execute 'lcd %:p:h'
    echo 'Enter path >> ' . expand('%:p:h')
endf
