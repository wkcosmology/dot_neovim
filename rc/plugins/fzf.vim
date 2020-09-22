" fzf basic configure {{
let g:fzf_buffers_jump = 1
let g:fzf_layout = { 'down': '~30%' }
let g:fzf_preview_window = ''

let g:fzf_colors = {
            \ 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }
" }}

" for directly executing the command {{
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
" }}

" fzf floating window setting {{
let $FZF_DEFAULT_OPTS = '--layout=reverse'
let g:fzf_layout = { 'window': 'call Centered_floating_window()' }
function! Centered_floating_window()
    let width = min([&columns - 4, max([80, &columns * 2 / 3])])
    let height = min([&lines - 4, max([40, &lines - 40])])
    let top = ((&lines - height) / 2) - 1
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

    let top = '╭' . repeat('─', width - 2) . '╮'
    let mid = '│' . repeat(' ', width - 2) . '│'
    let bot = '╰' . repeat('─', width - 2) . '╯'
    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    call nvim_open_win(s:buf, v:true, opts)
    set winhl=Normal:Normal
    let opts.row += 1
    let opts.height -= 2
    let opts.col += 2
    let opts.width -= 4
    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    augroup bufwipeout
        autocmd!
        au BufWipeout <buffer> exe 'bw '.s:buf
    augroup END
endfunction
" }}

" fuzzy find registers {{
function! s:get_registers() abort
    redir => l:regs
    silent registers
    redir END
    return split(l:regs, '\n')[1:]
endfunction

function! s:registers(...) abort
    let l:opts = {
                \ 'source': s:get_registers(),
                \ 'sink': {x -> feedkeys(matchstr(x, '\v^\S+\ze.*') . (a:1 ? 'P' : 'p'), 'x')},
                \ 'options': '--prompt="Reg> "'
                \ }
    call fzf#run(fzf#wrap(l:opts))
endfunction

command! -bang Registers call s:registers('<bang>' ==# '!')
" }}

" fzf Files {{
command! -bang -nargs=? -complete=dir Files
            \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline']}, <bang>0)
" }}

" using rg to perform the fuzzy search {{
command! -bang -nargs=* PRg
            \ call fzf#vim#grep(
            \ 'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>),
            \ 1,
            \ {'dir': system('git rev-parse --show-toplevel 2> /dev/null')[:-2]}, <bang>0)
" }}

" asynctasks.vim {{
function! s:fzf_sink(what)
    let p1 = stridx(a:what, '<')
    if p1 >= 0
        let name = strpart(a:what, 0, p1)
        let name = substitute(name, '^\s*\(.\{-}\)\s*$', '\1', '')
        if name !=? ''
            exec 'AsyncTask '. fnameescape(name)
        endif
    endif
endfunction

function! s:fzf_task()
    let rows = asynctasks#source(&columns * 48 / 100)
    let source = []
    for row in rows
        let name = row[0]
        let source += [name . '  ' . row[1] . '  : ' . row[2]]
    endfor
    let opts = { 'source': source, 'sink': function('s:fzf_sink'),
                \ 'options': '+m --nth 1 --inline-info --tac' }
    if exists('g:fzf_layout')
        for key in keys(g:fzf_layout)
            let opts[key] = deepcopy(g:fzf_layout[key])
        endfor
    endif
    call fzf#run(opts)
endfunction

command! -nargs=0 AsyncTaskFzf call s:fzf_task()
" }}

" fzf for tex (no need to install plugin) {{
function! s:bibtex_cite_sink(lines)
    let r=system('bibtex-cite ', a:lines[1])[1:]
    if a:lines[0] ==# 'ctrl-t'
        execute ':normal! a\citet{' . r . '}'
    else
        execute ':normal! a\citep[][]{' . r . '}'
    endif
endfunction

command! FZFBibtex :call fzf#run({
                \ 'source': 'bibtex-ls '.expand("%:p:h").'/bibtex.bib',
                \ 'sink*': function('<sid>bibtex_cite_sink'),
                \ 'window': 'call Centered_floating_window()',
                \ 'options': '--ansi --layout=reverse-list --expect=ctrl-t,<CR> --multi --prompt "Cite> "'})
command! FZFTexToc :call vimtex#fzf#run('ctli', g:fzf_layout)
" }}


" fzf for project path {{
function! s:fzf_project(lines)
    let l:line_list = split(a:lines[0])
    echo 'Enter Project: ' . l:line_list[0] . ' >> Path: ' . l:line_list[1]
    execute ':cd '. l:line_list[1]
endfunction

command! FZFProject :call fzf#run({
                \ 'source': 'cat /Users/wangk/.config/nvim/.myprojects.fzf',
                \ 'sink*': function('<sid>fzf_project'),
                \ 'window': 'call Centered_floating_window()',
                \ 'options': '--ansi --layout=reverse-list --multi --prompt "Project> "'})
"}}

" FZF for asynctasks.vim
function! s:fzf_sink(what)
	let p1 = stridx(a:what, '<')
	if p1 >= 0
		let name = strpart(a:what, 0, p1)
		let name = substitute(name, '^\s*\(.\{-}\)\s*$', '\1', '')
		if name != ''
			exec "AsyncTask ". fnameescape(name)
		endif
	endif
endfunction

function! s:fzf_task()
	let rows = asynctasks#source(&columns * 48 / 100)
	let source = []
	for row in rows
		let name = row[0]
		let source += [name . '  ' . row[1] . '  : ' . row[2]]
	endfor
	let opts = { 'source': source, 'sink': function('s:fzf_sink'),
				\ 'options': '+m --nth 1 --inline-info --tac' }
	if exists('g:fzf_layout')
		for key in keys(g:fzf_layout)
			let opts[key] = deepcopy(g:fzf_layout[key])
		endfor
	endif
	call fzf#run(opts)
endfunction
command! -nargs=0 AsyncTaskFzf call s:fzf_task()

" fzf yank
function! s:yank_list()
  redir => ys
  silent Yanks
  redir END
  return split(ys, '\n')[1:]
endfunction

function! s:yank_handler(reg)
  if empty(a:reg)
    echo "aborted register paste"
  else
    let token = split(a:reg, ' ')
    execute 'Paste' . token[0]
  endif
endfunction

command! FZFYank call fzf#run({
    \ 'source': <sid>yank_list(),
    \ 'sink': function('<sid>yank_handler'),
    \ 'options': '-m',
    \ 'down': 12,
    \ 'window': 'call Centered_floating_window()'
\ })
