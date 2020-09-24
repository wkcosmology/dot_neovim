" vim plugins manager:vim-plug------------------------------------------------
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

" ---------------------------------------------------------------------------
" fast edit
" ---------------------------------------------------------------------------
" highlights patterns and ranges, and preview
Plug 'markonm/traces.vim'
" powerful!!! operate on surround
Plug 'tpope/vim-surround'
" enhance . operate, support more like vim-surround
Plug 'tpope/vim-repeat'
" very powerful!!! easy motion
Plug 'easymotion/vim-easymotion'
" for quick commentary
Plug 'tpope/vim-commentary'
" abbreviation substitution and Coerion
Plug 'tpope/vim-abolish'
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
" file explorer
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'
" Great snippet tool, need backend source
Plug 'SirVer/ultisnips'
" paired operation
Plug 'tpope/vim-unimpaired'
" Useful UNIX command
Plug 'tpope/vim-eunuch'
" align
Plug 'junegunn/vim-easy-align'
" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" ---------------------------------------------------------------------------
" coc/fzf
" ---------------------------------------------------------------------------
" coc plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" fzf plugin
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" fzf vim plugin
Plug 'junegunn/fzf.vim'
" fzf most recently used
Plug 'pbogut/fzf-mru.vim'
" fzf for branches
Plug 'stsewd/fzf-checkout.vim'
" using fzf window for coc
Plug 'antoinemadec/coc-fzf'

" ---------------------------------------------------------------------------
" Buffer/Window/Session
" ---------------------------------------------------------------------------
" kill the buffer while keep the window
Plug 'moll/vim-bbye'
" the following two plugs is for session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

" ---------------------------------------------------------------------------
" ui
" ---------------------------------------------------------------------------
" Plug 'crusoexia/vim-monokai'
Plug 'morhetz/gruvbox'
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
" show marks
Plug 'kshenoy/vim-signature'

" ---------------------------------------------------------------------------
" python related
" ---------------------------------------------------------------------------
Plug 'jeetsukumaran/vim-pythonsense', {'for': ['python']}
Plug 'vim-python/python-syntax', {'for': ['python']}
" add docstring in different way, like numpy
Plug 'wkcosmology/vim-pydocstring', {'for': ['python']}

" ---------------------------------------------------------------------------
" C/C++ related
" ---------------------------------------------------------------------------
" great auto completion tool
Plug 'ycm-core/YouCompleteMe' , {'for': ['c', 'cpp', 'h', 'hpp'], 'frozen': 1}
" mpi highlight
Plug 'jiangxincode/mpi.vim', {'for': ['c', 'cpp', 'h', 'hpp']}
Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['c', 'cpp', 'h', 'hpp']}
" Doxygen docstring for C++
Plug 'vim-scripts/DoxygenToolkit.vim', {'for': ['c', 'cpp', 'h', 'hpp']}
" GDB
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh', 'for': ['c', 'cpp', 'h', 'hpp']}
Plug 'derekwyatt/vim-fswitch', {'for': ['c', 'cpp', 'h', 'hpp']}

" ---------------------------------------------------------------------------
" Git
" ---------------------------------------------------------------------------
" show git modified line in the state column
Plug 'mhinz/vim-signify'
" powerful git tool
Plug 'tpope/vim-fugitive'
" github for fugitive
Plug 'tpope/vim-rhubarb'
" tree like git browser
Plug 'junegunn/gv.vim'

" ---------------------------------------------------------------------------
" Anxuliary
" ---------------------------------------------------------------------------
" Great terminal tool
Plug 'voldikss/vim-floaterm'
" asynchronously check error
Plug 'dense-analysis/ale'
" add head information
Plug 'alpertuna/vim-header', { 'on': 'AddHeader'}
" run the test file, support many filetypes, including python
Plug 'vim-test/vim-test'
" task control
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
" vimtex
Plug 'lervag/vimtex'
" all the language syntax
Plug 'sheerun/vim-polyglot'
" spell check
Plug 'reedes/vim-lexical', {'for': ['tex', 'markdown']}
" undo tree
Plug 'mbbill/undotree'
" tag bar
Plug 'majutsushi/tagbar'
" gist
Plug 'lambdalisue/vim-gista'

call plug#end()
" end of vim plugins manager:vim-plug------------------------------------------
" :setlocal foldmethod=marker
