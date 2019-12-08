let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_filetype_whitelist = {
			\ "c":1,
			\ "cpp":1,
			\ "h":1,
			\ "sh":1,
			\ "zsh":1,
			\ }
  let g:ycm_show_diagnostics_ui = 0
  set completeopt=menu,menuone
  let g:ycm_add_preview_to_completeopt = 0
  let g:ycm_autoclose_preview_window_after_completion = 1
  let g:ycm_semantic_triggers =  {
           \ 'c,cpp,java,go,erlang,perl': ['re!\w{2}'],
           \ 'cs,lua,javascript': ['re!\w{2}'],
           \ }
