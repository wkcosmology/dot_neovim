let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_use_clangd = 0

let g:ycm_filetype_whitelist = {
			\ "c":1,
			\ "cpp":1,
			\ "h":1,
			\ "sh":1,
			\ "python":1,
			\ "zsh":1,
			\ }
set completeopt=menu,menuone
let g:ycm_semantic_triggers =  {
       \ 'c,cpp,py,java,go,erlang,perl': ['re!\w{2}'],
       \ 'cs,lua,javascript': ['re!\w{2}'],
       \ }

" ycm config
let g:ycm_max_num_candidates = 20
let g:ycm_show_diagnostics_ui = 0
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_collect_identifiers_from_tags_files=0
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_cache_omnifunc=0
let g:ycm_use_ultisnips_completer = 1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_add_preview_to_completeopt=0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_disable_for_files_larger_than_kb = 1000
