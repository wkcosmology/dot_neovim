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
" pretty tab line
Plug 'gcmt/taboo.vim'
" devicons
Plug 'ryanoasis/vim-devicons'
" choose the window
Plug 't9md/vim-choosewin'

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
Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['cpp', 'hpp']}
" great auto completion tool
Plug 'Valloric/YouCompleteMe', {'for': ['c', 'cpp', 'h', 'hpp'], 'forzen': 1}
" mpi highlight
Plug 'jiangxincode/mpi.vim', {'for': ['c', 'cpp', 'h', 'hpp']}
" clang-formater
Plug 'kana/vim-operator-user'
Plug 'rhysd/vim-clang-format'

"----------------------------------------------------------------------------
" snippet
"----------------------------------------------------------------------------
" Great snippet tool, need backend source
Plug 'SirVer/ultisnips'

"----------------------------------------------------------------------------
" Auxiliary
"----------------------------------------------------------------------------
" Great terminal tool, (since deol does not support customize config)
Plug 'wkcosmology/deol.nvim', { 'do': ':UpdateRemotePlugins' }
" run commands in vim
" Plug 'tpope/vim-dispatch'
" show git modified line in the state column
Plug 'mhinz/vim-signify'
" git tool
Plug 'tpope/vim-fugitive'
" asynchronously check error
Plug 'dense-analysis/ale'
" add head information
Plug 'alpertuna/vim-header', { 'on': 'AddHeader'}
" show the tag bar
" Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle'}
" kill the buffer while keep the window
Plug 'moll/vim-bbye'
" run commands in vim
Plug 'skywind3000/asyncrun.vim'
" run the test file, support many filetypes, including python
Plug 'janko/vim-test'
" show marks
Plug 'kshenoy/vim-signature'
" the following two plugs is for session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
" mru for fzf preview
Plug 'Shougo/neomru.vim'
" task control
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'

call plug#end()
" end of vim plugins manager:vim-plug------------------------------------------
