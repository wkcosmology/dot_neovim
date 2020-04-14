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
" save the file
nnoremap <silent> <leader>fs :w<CR>
" quit vim
nnoremap <silent> <leader>qq :qa<CR>
" reload the vimrc setting
nnoremap <silent> <leader>feR :so $MYVIMRC<CR>
" open terminal in floating window
nnoremap <silent><leader>' :<C-u>Deol -split=floating<CR>
" easy motion setting
nmap <silent> <leader>jj <Plug>(easymotion-overwin-f)
nmap <silent> <leader>jw <Plug>(easymotion-bd-w)
nmap <silent> <leader>je <Plug>(easymotion-bd-e)

" ---------------------------------------------------------
" search & files
" ---------------------------------------------------------
" fuzzy searching command
nnoremap <silent> <leader>: :Commands<CR>
" fuzzy search content
nnoremap <silent> <leader>ss :BLines<CR>
" fuzzy search content in project
nnoremap <silent> <leader>ps :PRg<CR>
" fuzzy search most recent file
nnoremap <silent> <leader>fr :FZFMru <CR>
" fuzzy searching tags
nnoremap <silent> <leader>fo :BTags <CR>
" fuzzy search buffers
nnoremap <silent> <leader>bb :Buffers <CR>
" fuzzy search files under current project
nnoremap <silent> <Leader>fp :exe 'Files ' . <SID>fzf_root()<CR>
" fuzzy search files under current path
nnoremap <silent> <Leader>ff :Files <CR>
" fuzzy search registers
nnoremap <silent> <Leader>re :Registers <CR>


" ---------------------------------------------------------
" buffer & tab related
" ---------------------------------------------------------
" close current buffer TODO: enter scratch when close the last buffer
nmap <silent> <leader>bd :Bwipeout<CR>
" close other buffers except the current one
nmap <silent> <leader>bD :DeleteHiddenBuffers<CR>
" close the tab
nmap <silent> <silent>td :tabclose<CR>

" ---------------------------------------------------------
" window related
" ---------------------------------------------------------
nmap <C-w>m <Plug>(zoom-toggle)
" close the location list and quickfix window
nnoremap <silent> <leader>lc :ccl\|lcl<CR>
" choose the window
nmap  -  <Plug>(choosewin)

" Async-task
noremap <silent><leader>tr :AsyncTask file-run<cr>
noremap <silent><leader>tb :AsyncTask file-build<cr>

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
nnoremap <leader>si :Isort <CR>
" Remap keys for gotos
nmap \r  <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gt <Plug>(coc-type-definition)
nnoremap <silent> K :call <SID>show_documentation()<CR>

" ---------------------------------------------------------
" youcompleteme
" ---------------------------------------------------------
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" ---------------------------------------------------------
" utilities
" ---------------------------------------------------------
" open defx file tree
" nnoremap <silent> <leader>ft :DefxDefault <CR>
nmap <space>ft :call <SID>filetree()<CR>

" open tagbar
nnoremap <silent> <leader>tt :TagbarToggle<CR>
" using gm for mark, since m is used by vim-easyclip
nnoremap gm m
" test the nearest object to the cursor
nnoremap <leader>tn :TestNearest <CR>

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
