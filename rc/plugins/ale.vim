let g:ale_linters_explicit = 1

" enable lint on save
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0

" ---------------------------------------------------------------
" disable other functions
let g:ale_completion_enabled = 0

" ---------------------------------------------------------------
" UI
let g:airline#extensions#ale#enabled = 1
let g:ale_list_window_size = 5
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚡'
let g:ale_set_balloons = 1
let g:ale_open_list = 1

" ---------------------------------------------------------------
" error format
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" ---------------------------------------------------------------
" linter
let g:ale_linters = {
            \   'csh': ['shell'],
            \   'zsh': ['shell'],
            \   'go': ['gofmt', 'golint'],
            \   'python': ['flake8'],
            \   'javascript': ['eslint'],
            \   'c': ['gcc'],
            \   'h': ['gcc'],
            \   'cpp': ['g++'],
            \   'hpp': ['g++'],
            \   'text': [],
            \   'vim':['vint'],
            \}
let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++11'
