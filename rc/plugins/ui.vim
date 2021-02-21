set nocursorcolumn
" theme
syntax enable
set noshowmode
set conceallevel=0
set termguicolors
set shiftwidth=4
set background=dark
let g:gruvbox_invert_selection=0
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'
" gruvbox
let g:gruvbox_italicize_comments=1
let g:gruvbox_transparent_bg=1
" rainbow
call rainbow_parentheses#activate()
" indetLine config
let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_fileTypeExclude = ['tex', 'json'] " conceallevel related
" airline
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_tab_count = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#tab_nr_type = 2
let g:airline#extensions#tabline#tabnr_formatter = 'tabnr'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#virtualenv#enabled = 0
let g:airline#extensions#csv#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline_extensions = ['ale', 'branch', 'fugitiveline', 'tabline']
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>[ <Plug>AirlineSelectPrevTab
nmap <leader>] <Plug>AirlineSelectNextTab
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = ' '
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = ' '
let g:airline_section_b = "%{airline#util#wrap(airline#extensions#branch#get_head(),80)} %{get(b:,'gitsigns_status','')}"

let g:airline_filetype_overrides = {
    \ 'coc-explorer':  [ 'CoC Explorer', '' ],
    \ 'fugitive': ['fugitive', '%{airline#util#wrap(airline#extensions#branch#get_head(),80)}'],
    \ 'help':  [ 'Help', '%f' ],
    \ 'vim-plug': [ 'Plugins', '' ],
    \ }

highlight Comment cterm=italic gui=italic
" hop highlight
" highlight HopNextKey guifg=Black guibg=Yellow blend=0
" highlight HopNextKey1 guifg=Black guibg=Yellow blend=0
" highlight HopNextKey2 guifg=Black guibg=Yellow blend=0
" My setting for echo message
hi EchoHi guifg=Yellow cterm=bold
" highlight for gitgutter
highlight SignColumn guibg=Normal
highlight GitGutterAdd    guifg=Yellow ctermfg=Yellow cterm=bold
highlight GitGutterChange guifg=Cyan ctermfg=Cyan cterm=bold
highlight GitGutterDelete guifg=Red ctermfg=Red cterm=bold
" To enable transparent background in vim
augroup TranspBg
    autocmd!
    autocmd VimEnter * hi Normal guibg=none
augroup END
