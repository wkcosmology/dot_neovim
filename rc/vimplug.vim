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
Plug 'haya14busa/incsearch.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'rhysd/clever-f.vim'
Plug 'wellle/targets.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'google/vim-searchindex'
Plug 'svermeulen/vim-easyclip'
"----------------------------------------------------------------------------
" ui
"----------------------------------------------------------------------------
Plug 'crusoexia/vim-monokai'
Plug 'Shougo/echodoc.vim'
Plug 'drzel/vim-scrolloff-fraction'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'dhruvasagar/vim-zoom'
"----------------------------------------------------------------------------
"python
"----------------------------------------------------------------------------
Plug 'jeetsukumaran/vim-pythonsense', {'for': ['python']}
Plug 'vim-python/python-syntax', {'for': ['python']}
Plug 'wkcosmology/vim-pydocstring'
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

" Initialize plugin system
call plug#end()
" end of vim plugins manager:vim-plug------------------------------------------
