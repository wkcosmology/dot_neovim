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
" fuzzy search content, TODO: need to set for .gitignore
nnoremap <silent> <leader>ss :BLines<CR>
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
nmap <silent> <leader>bd :BD<CR>
" close other buffers except the current one
nmap <silent> <leader>bD :Bdelete hidden<CR><CR>
" close the tab
nmap <silent> <silent>td :tabclose<CR>

" ---------------------------------------------------------
" window related
" ---------------------------------------------------------
nmap <leader>wm <Plug>(zoom-toggle)
nnoremap <C-w>v :vsplit<CR>
nnoremap <C-w>x :split<CR>
nnoremap <C-w>d :close<CR>
" close the location list and quickfix window
nnoremap <silent> <leader>lc :ccl\|lcl<CR>


" ---------------------------------------------------------
" neomake key mapping
" ---------------------------------------------------------
" disable neomake error check
nnoremap <silent> <leader>ed :NeomakeDisable<CR>
" enable neomake error check
nnoremap <silent> <leader>ee :NeomakeEnable<CR>
" clean all the neomake error
nnoremap <silent> <leader>ec :NeomakeClean<CR>


" ---------------------------------------------------------
" coc
" ---------------------------------------------------------
" coc rename variable
nmap \r  <Plug>(coc-rename)
" sort imports
nnoremap <leader>si :Isort <CR>
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Remap keys for gotos
autocmd FileType python nmap <silent> gd <Plug>(coc-definition)
autocmd FileType python nmap <silent> gr <Plug>(coc-references)
" location list
nnoremap <leader>ll :CocList locationlist<CR>
autocmd FileType python nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" ---------------------------------------------------------
" youcompleteme
" ---------------------------------------------------------
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
autocmd FileType cpp,c nmap <silent> gd :YcmCompleter GoToDefinition<CR>
autocmd FileType cpp,c nmap <silent> gr :YcmCompleter GoToReferences<CR>
autocmd FileType cpp,c nmap <silent> K :YcmCompleter GetDoc<CR>
" ---------------------------------------------------------
" ultisnip
" ---------------------------------------------------------
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" ---------------------------------------------------------
" utilities
" ---------------------------------------------------------
" open defx file tree
nnoremap <silent> <leader>ft :DefxDefault <CR>
" open tagbar
nnoremap <silent> <leader>tt :TagbarToggle<CR>
" using gm for mark, since m is used by vim-easyclip
nnoremap gm m
" test the nearest object to the cursor
nnoremap <leader>tn :TestNearest <CR>
" ---------------------------------------------------------
" sync_repo
" ---------------------------------------------------------
nnoremap <silent> <leader>kf :SyncFile <CR>
nnoremap <silent> <leader>kr :SyncRepo <CR>

" -----------------------------------------------------------------
" script function
" -----------------------------------------------------------------
"  find .git for project
fun! s:fzf_root()
	let path = finddir(".git", expand("%:p:h").";")
	return fnamemodify(substitute(path, ".git", "", ""), ":p:h")
endfun
