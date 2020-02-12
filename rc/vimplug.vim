" vim plugins manager:vim-plug------------------------------------------------
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
"----------------------------------------------------------------------------
" coc
"----------------------------------------------------------------------------
" coc plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"----------------------------------------------------------------------------
"fzf package
"----------------------------------------------------------------------------
" fzf plugin
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" fzf vim plugin
Plug 'junegunn/fzf.vim'
" fzf most recently used
Plug 'pbogut/fzf-mru.vim'
" fzf preview
Plug 'yuki-ycino/fzf-preview.vim'
"----------------------------------------------------------------------------
"fast edit
"----------------------------------------------------------------------------
" matching while typing for search
Plug 'haya14busa/incsearch.vim'
" powerful!!! operate on surround
Plug 'tpope/vim-surround'
" enhance . operate, support more like vim-surround
Plug 'tpope/vim-repeat'
" very powerful!!! easy motion
Plug 'easymotion/vim-easymotion'
" for quick commentary
Plug 'tpope/vim-commentary'
" extend f, F, t, T for searching
Plug 'rhysd/clever-f.vim'
" add more text object
Plug 'wellle/targets.vim'
" auto add pairs
Plug 'jiangmiao/auto-pairs'
" display number of matchings
Plug 'google/vim-searchindex'
" define s as substitution
Plug 'svermeulen/vim-easyclip'
"----------------------------------------------------------------------------
" ui
"----------------------------------------------------------------------------
" monokai theme
Plug 'crusoexia/vim-monokai'
" show the doc on echo
Plug 'Shougo/echodoc.vim'
" let the cursor stay away from ceil and bottom
Plug 'drzel/vim-scrolloff-fraction'
" great tabline and stateline
Plug 'vim-airline/vim-airline'
" theme for airline
Plug 'vim-airline/vim-airline-themes'
" show the vertical lines to represent the indent
Plug 'Yggdroot/indentLine'
" different color for nesting parenthese
Plug 'junegunn/rainbow_parentheses.vim'
" maximum and restore current window, powerful!!!
Plug 'dhruvasagar/vim-zoom'
" open terminal in a float window
Plug 'voldikss/vim-floaterm'
" pretty tab line
Plug 'gcmt/taboo.vim'
" paper color theme
Plug 'NLKNguyen/papercolor-theme'
" dracula theme
Plug 'morhetz/gruvbox'
" devicons
Plug 'ryanoasis/vim-devicons'
"----------------------------------------------------------------------------
"python
"----------------------------------------------------------------------------
Plug 'jeetsukumaran/vim-pythonsense', {'for': ['python']}
Plug 'vim-python/python-syntax', {'for': ['python']}
" add docstring in different way, like numpy
Plug 'wkcosmology/vim-pydocstring'
" sort the import order
Plug 'fisadev/vim-isort'
"----------------------------------------------------------------------------
" c family
"----------------------------------------------------------------------------
" enhance cpp highlight
Plug 'bfrg/vim-cpp-modern', {'for': ['c', 'cpp', 'h']}
" great auto completion tool
Plug 'Valloric/YouCompleteMe', {'for': ['c', 'cpp', 'h'], 'forzen': 1}
" mpi highlight
Plug 'jiangxincode/mpi.vim'
"----------------------------------------------------------------------------
" front-end
"----------------------------------------------------------------------------

"----------------------------------------------------------------------------
" snippet
"----------------------------------------------------------------------------
" Great snippet tool, need backend source
Plug 'SirVer/ultisnips'
" Great snippet backend
" Plug 'honza/vim-snippets'
"----------------------------------------------------------------------------
" Auxiliary
"----------------------------------------------------------------------------
" Great terminal tool, (since deol does not support customize config)
Plug 'wkcosmology/deol.nvim', { 'do': ':UpdateRemotePlugins' }
" run commands in vim
Plug 'tpope/vim-dispatch'
" show git modified line in the state column
Plug 'mhinz/vim-signify'
" git tool
Plug 'tpope/vim-fugitive'
" asynchronously check error
Plug 'neomake/neomake'
" add head information
Plug 'alpertuna/vim-header', { 'on': 'AddHeader'}
" show the tag bar
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle'}
" can close buffers intelligently
Plug 'Asheq/close-buffers.vim'
" run commands in vim
Plug 'skywind3000/asyncrun.vim'
" my plugin to upload files to server
Plug 'wkcosmology/vim_sync_repo'
" show the file tree
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-git', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons', { 'do': ':UpdateRemotePlugins' }
" run the test file, support many filetypes, including python
Plug 'janko/vim-test'
" kill the buffer while keep the window
Plug 'qpkorr/vim-bufkill'
" show marks
Plug 'kshenoy/vim-signature'
" the following two plugs is for session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
" supertab
Plug 'ervandew/supertab'
" mru for fzf preview
Plug 'Shougo/neomru.vim'
" Initialize plugin system
call plug#end()
" end of vim plugins manager:vim-plug------------------------------------------
