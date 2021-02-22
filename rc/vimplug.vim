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
" enhance * search
Plug 'haya14busa/vim-asterisk'
" powerful!!! operate on surround
Plug 'tpope/vim-surround'
" enhance . operate, support more like vim-surround
Plug 'tpope/vim-repeat'
" very powerful!!! easy motion
Plug 'easymotion/vim-easymotion'
" Plug 'phaazon/hop.nvim'
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
Plug 'svermeulen/vim-subversive'
" Great snippet tool, need backend source
Plug 'SirVer/ultisnips'
" paired operation
Plug 'tpope/vim-unimpaired'
" Useful UNIX command
Plug 'tpope/vim-eunuch'
" align
Plug 'junegunn/vim-easy-align'
" markdown
Plug 'godlygeek/tabular', { 'for': ['md'] }
Plug 'plasticboy/vim-markdown', { 'for': ['md'] }
" document
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
" matchup
Plug 'andymass/vim-matchup'
" tagbar
Plug 'liuchengxu/vista.vim'
" undo tree visualizer
Plug 'mbbill/undotree', { 'on': ['UndotreeToggle', 'UndotreeShow'] }

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
" using fzf window for coc, current for coc-yank
Plug 'antoinemadec/coc-fzf'
Plug 'voldikss/fzf-floaterm', { 'on': ['FloatermNew', 'Floaterms', 'FloatermToggle']}

" ---------------------------------------------------------------------------
" build-in LSP
" ---------------------------------------------------------------------------
" Plug 'neovim/nvim-lspconfig'

" ---------------------------------------------------------------------------
" Buffer/Window/Session
" ---------------------------------------------------------------------------
" kill the buffer while keep the window
Plug 'moll/vim-bbye'
" the following two plugs is for session
Plug 'xolox/vim-misc', { 'on':  ['OpenSession', 'SaveSession', 'ViewSession'] }
Plug 'xolox/vim-session', { 'on':  ['OpenSession', 'SaveSession', 'ViewSession'] }

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
" show the vertical lines to represent the indent
Plug 'Yggdroot/indentLine'
" different color for nesting parenthese
" Plug 'junegunn/rainbow_parentheses.vim'
" maximum and restore current window, powerful!!!
Plug 'szw/vim-maximizer'
" pretty tab line
Plug 'gcmt/taboo.vim'
" devicons
Plug 'ryanoasis/vim-devicons'
" choose the window
Plug 't9md/vim-choosewin', 
" start up window
Plug 'mhinz/vim-startify'

" ---------------------------------------------------------------------------
" python related
" ---------------------------------------------------------------------------
" python text object, functions, classes etc.
Plug 'jeetsukumaran/vim-pythonsense', {'for': ['py']}
" using coc-jedi with jedi-language-server for python
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }

" ---------------------------------------------------------------------------
" C/C++ related
" ---------------------------------------------------------------------------
" GDB
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh', 'for': ['c', 'cpp', 'h', 'hpp']}
" switch header and source file
Plug 'derekwyatt/vim-fswitch', {'for': ['c', 'cpp', 'h', 'hpp']}

" ---------------------------------------------------------------------------
" Git
" ---------------------------------------------------------------------------
" show git modified line in the state column
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
" powerful git tool
Plug 'tpope/vim-fugitive'
" tree like git browser
Plug 'junegunn/gv.vim', { 'on': 'GV' }

" ---------------------------------------------------------------------------
" Anxuliary
" ---------------------------------------------------------------------------
" Great terminal tool
Plug 'voldikss/vim-floaterm', { 'on': ['FloatermNew', 'Floaterms', 'FloatermToggle']}
" asynchronously check error
Plug 'dense-analysis/ale'
" add head information
Plug 'alpertuna/vim-header', { 'on': 'AddHeader'}
" run the test file, support many filetypes, including python
Plug 'vim-test/vim-test', {'on': ['TestNearest', 'TestFile']}
" task control
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
" vimtex
Plug 'lervag/vimtex', { 'for': ['tex'] }
" spell check
Plug 'reedes/vim-lexical', { 'for': ['tex', 'markdown'] }
" gist
Plug 'lambdalisue/vim-gista', { 'on': ['Gista'] }
" Cheatsheet for vim
Plug 'lifepillar/vim-cheat40', { 'on': ['Cheat'] }
" cheat
Plug 'RishabhRD/popfix', { 'on': ['Cheat', 'CheatList'] }
Plug 'RishabhRD/nvim-cheat.sh', { 'on': ['Cheat', 'CheatList'] }
" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


call plug#end()
" end of vim plugins manager:vim-plug------------------------------------------
" :setlocal foldmethod=marker
