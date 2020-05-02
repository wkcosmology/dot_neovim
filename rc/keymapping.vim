" key mapping
" ---------------------------------------------------------
" fast editing
" ---------------------------------------------------------
" set the leader to space
let mapleader=" "
" alias to left and right in insert mode
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-n> <Down>
inoremap <C-p> <Up>
inoremap <C-a> <Home>
inoremap <C-e> <End>
" clear the searching highlight
nnoremap <silent> <leader>sc :noh <CR>
" quit vim
nnoremap <silent> <leader>qq :qa<CR>
" open terminal in floating window
nnoremap <silent> <leader>' :FloatermToggle<CR>
" easy motion setting
nmap <silent> <leader>jj <Plug>(easymotion-overwin-f)
nmap <silent> <leader>jw <Plug>(easymotion-bd-w)
nmap <silent> <leader>je <Plug>(easymotion-bd-e)

" ---------------------------------------------------------
" search
" ---------------------------------------------------------
" fuzzy searching command
nnoremap <silent> <leader>: :Commands<CR>
" fuzzy search content
nnoremap <silent> <leader>ss :BLines<CR>
" fuzzy search content in project
nnoremap <silent> <leader>sp :PRg<CR>
" yank history
nnoremap <silent> <space>sy  :<C-u>CocList yank<cr>

" ---------------------------------------------------------
" files
" ---------------------------------------------------------
nnoremap <silent> <leader>f <Nop>
" save the file
nnoremap <silent> <leader>fs :w<CR>
" reload the vimrc setting
nnoremap <silent> <leader>feR :so $MYVIMRC<CR>
" fuzzy search most recent file
nnoremap <silent> <leader>fr :FZFMru <CR>
" fuzzy searching tags
nnoremap <silent> <leader>fo :BTags <CR>
" fuzzy search files under current project
nnoremap <silent> <Leader>fp :exe 'Files ' . <SID>fzf_root()<CR>
" fuzzy search files under current path
nnoremap <silent> <Leader>ff :Files <CR>
" open defx file tree
nnoremap <silent> <space>ft :DefxDefault <CR>

" ---------------------------------------------------------
" buffers
" ---------------------------------------------------------
" fuzzy search buffers
nnoremap <silent> <leader>bb :Buffers <CR>
" close current buffer
nmap <silent> <leader>bd :Bwipeout<CR>
" previous buffer
nmap <silent> <leader>bp :bp<CR>
" next buffer
nmap <silent> <leader>bn :bn<CR>
" close other buffers except the current one
nmap <silent> <leader>bD :DeleteHiddenBuffers<CR>

" ---------------------------------------------------------
" tabs
" ---------------------------------------------------------
" close the tab
nmap <C-t> <Nop>
nmap <C-t>d :tabclose<CR>
nmap <C-t>l :tabNext<CR>
nmap <C-t>n :TabooOpen 
nmap <C-t>h :tabNext<CR>

" ---------------------------------------------------------
" window related
" ---------------------------------------------------------
nmap <C-w>m <Plug>(zoom-toggle)
" close the location list and quickfix window
nnoremap <silent> <leader>lc :ccl\|lcl<CR>
" choose the window
nmap  -  <Plug>(choosewin)
nnoremap <silent> <leader>oo :only<CR>

" ---------------------------------------------------------
" Async-task
" ---------------------------------------------------------
noremap <silent><leader>tr :AsyncTask file-run<cr>
noremap <silent><leader>tb :AsyncTask file-build<cr>
noremap <silent><leader>tf :AsyncTaskFzf<cr>

" ---------------------------------------------------------
" Git
" ---------------------------------------------------------
nnoremap <leader>gd :Gvdiffsplit!<cr>
nnoremap <leader>gdh :diffget //2<cr>
nnoremap <leader>gdl :diffget //3<cr>
nnoremap <leader>gw :Gwrite<cr>
" nnoremap <leader>gr :Gread<cr> # too dangerous
nnoremap <leader>gg :G<cr>
nnoremap <leader>gv :GV<cr>
nnoremap <leader>gc :Gcommit<cr>

" ---------------------------------------------------------
" ale key mapping
" ---------------------------------------------------------
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <silent> <leader>ec :ALEResetBuffer<CR>

" ---------------------------------------------------------
" coc
" ---------------------------------------------------------

" sort imports
autocmd FileType python nnoremap <leader>si :Isort <CR>
" Remap keys for gotos
nmap \r  <Plug>(coc-rename)
autocmd FileType python,javascript nmap <silent> gd <Plug>(coc-definition)
autocmd FileType python,javascript nmap <silent> gr <Plug>(coc-references)
autocmd FileType python,javascript nmap <silent> gi <Plug>(coc-implementation)
autocmd FileType python,javascript nmap <silent> gt <Plug>(coc-type-definition)
autocmd FileType python,javascript nnoremap <silent> K :call <SID>show_documentation()<CR>

" ---------------------------------------------------------
" youcompleteme
" ---------------------------------------------------------
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
autocmd FileType c,cpp,h,hpp nmap gd :YcmCompleter GoToInclude<cr>
autocmd FileType c,cpp,h,hpp nmap gt :YcmCompleter GetType<cr>
autocmd FileType c,cpp,h,hpp nmap gr :YcmCompleter GoToReferences<cr>
autocmd FileType c,cpp,h,hpp nmap K :YcmGetDocFloatWin<cr>
autocmd FileType c,cpp,h,hpp nmap \r :YcmCompleter RefactorRename 

" ---------------------------------------------------------
" utilities
" ---------------------------------------------------------

" using gm for mark, since m is used by vim-easyclip
nnoremap gm m
" test the nearest object to the cursor
nnoremap <leader>tn :TestNearest <CR>
" code format
autocmd FileType c,cpp,h,hpp nmap <F1> :ClangFormat<cr>
autocmd FileType python nmap <F1> :call CocAction('format')<cr>

" -----------------------------------------------------------------
" script function
" -----------------------------------------------------------------
"  find .git for project
fun! s:fzf_root()
	let path = finddir(".git", expand("%:p:h").";")
	return fnamemodify(substitute(path, ".git", "", ""), ":p:h")
endfun

" close all hidden buffers
if !exists("*DeleteHiddenBuffers") " Clear all hidden buffers when running 
	function DeleteHiddenBuffers() " Vim with the 'hidden' option
		let tpbl=[]
		call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
		for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
			silent execute 'bwipeout' buf
		endfor
	endfunction
endif
command! DeleteHiddenBuffers call DeleteHiddenBuffers()

" show documentation
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" call coc-explorer in current buffer path
function! s:filetree()
    execute "CdPwd"
    execute "CocCommand explorer --preset default --sources=buffer+,file+"
endfunction
