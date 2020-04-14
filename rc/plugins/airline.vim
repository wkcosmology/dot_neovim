"airline config
let g:airline_powerline_fonts = 1
let g:airline_theme='minimalist'
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tab_count = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 2
let g:airline#extensions#tabline#tabnr_formatter = 'tabnr'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#virtualenv#enabled = 0
let g:airline#extensions#csv#enabled = 1
let g:airline_extensions = ["ale", "branch", "fugitiveline", "tabline", "ycm"]
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
