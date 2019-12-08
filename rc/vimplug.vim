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
Plug 'crusoexia/vim-monokai'
" show the doc on echo
Plug 'Shougo/echodoc.vim'
Plug 'drzel/vim-scrolloff-fraction'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'dhruvasagar/vim-zoom'
Plug 'vimlab/split-term.vim'
"----------------------------------------------------------------------------
"python
"----------------------------------------------------------------------------
Plug 'jeetsukumaran/vim-pythonsense', {'for': ['python']}
Plug 'vim-python/python-syntax', {'for': ['python']}
Plug 'wkcosmology/vim-pydocstring'
Plug 'fisadev/vim-isort'
"----------------------------------------------------------------------------
" c family
"----------------------------------------------------------------------------
Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['c', 'cpp', 'h']}
Plug 'Valloric/YouCompleteMe', {'for': ['c', 'cpp', 'h'], 'forzen': 1}
"----------------------------------------------------------------------------
" snippet
"----------------------------------------------------------------------------
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"----------------------------------------------------------------------------
" Shougo
"----------------------------------------------------------------------------
Plug 'Shougo/deol.nvim'
"----------------------------------------------------------------------------
" tpope
"----------------------------------------------------------------------------
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-sleuth'
"----------------------------------------------------------------------------
"others
"----------------------------------------------------------------------------
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree' , { 'on':  'NERDTreeCWD' }
Plug 'neomake/neomake'
Plug 'alpertuna/vim-header', { 'on': 'AddHeader'}
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle'}
Plug 'Asheq/close-buffers.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'wkcosmology/vim_sync_repo'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-git', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons', { 'do': ':UpdateRemotePlugins' }
Plug 'kassio/neoterm'
Plug 'Shougo/deol.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'l04m33/vlime', {'rtp': 'vim/'}
Plug 'janko/vim-test'

" Initialize plugin system
call plug#end()
" end of vim plugins manager:vim-plug------------------------------------------
