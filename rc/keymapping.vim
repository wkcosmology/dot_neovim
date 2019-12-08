" key mapping
" fast editing
let mapleader=" "
inoremap <C-f> <Right>
inoremap <C-b> <Left>
nnoremap <silent> <leader>sc :noh <CR>
nnoremap <silent> <leader>fs :w<CR>
nnoremap <silent> <leader>qq :qa<CR>
nnoremap <silent> <leader>feR :so $MYVIMRC<CR>
nnoremap <silent><leader>' :<C-u>Deol -split=floating<CR>
" search & files
nnoremap <silent> <leader>: :Commands<CR>
nnoremap <silent> <leader>fr :FZFMru <CR>
nnoremap <silent> <leader>fo :BTags <CR>
nnoremap <silent> <leader>bb :Buffers <CR>
nnoremap <silent> <leader>ft :DefxDefault <CR>
nnoremap <silent> <leader>tt :TagbarToggle<CR>
nnoremap <silent> <Leader>fp :exe 'Files ' . <SID>fzf_root()<CR>
nnoremap <silent> <Leader>ff :Files <CR>
" sync_repo
nnoremap <silent> <leader>kf :SyncFile <CR>
nnoremap <silent> <leader>kr :SyncRepo <CR>
" buffer related
nmap <silent> <leader>bd :b#<bar>bd#<CR> <CR>
nmap <silent> <leader>bD :CloseHiddenBuffers! <CR>
" window related
nnoremap <silent> <C-q> :close<CR>
nmap <leader>wm <Plug>(zoom-toggle)
nmap <leader>wv :vsplit <CR>
nmap <leader>wh :split <CR>
" jump commands
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>
" neomake key mapping
nmap <silent> <leader>ed :NeomakeDisable <CR>
nmap <silent> <leader>ee :NeomakeEnable <CR>
nmap <silent> <leader>ec :NeomakeClean <CR>
" easymotion
nmap <silent> <leader>jj <Plug>(easymotion-overwin-f)
nmap <silent> <leader>jw <Plug>(easymotion-bd-w)
nmap <silent> <leader>je <Plug>(easymotion-bd-e)
" coc
nmap \r  <Plug>(coc-rename)
" coc.python
nmap <leader>si :Isort <CR>
nmap <leader>te :CocCommand python.execInTerminal <CR>
nmap <leader>tc :CocCommand python.createTerminal <CR>
" using gm for mark, since m is used by vim-easyclip
nnoremap gm m

" -----------------------------------------------------------------
" script function
" -----------------------------------------------------------------
fun! s:fzf_root()
	let path = finddir(".git", expand("%:p:h").";")
	return fnamemodify(substitute(path, ".git", "", ""), ":p:h")
endfun
