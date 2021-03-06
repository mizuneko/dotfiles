" Vim 本体の機能のデフォルト値
setglobal cmdheight=2
setglobal laststatus=2
setglobal nowritebackup
setglobal nobackup
setglobal directory=~/.vim/work
setglobal undodir=~/.vim/work
setglobal list
setglobal relativenumber
setglobal encoding=utf-8
scriptencoding utf-8
setglobal fileencoding=utf-8
setglobal fileencodings=cp932,sjis,ucs-boms,utf-8
setglobal ambiwidth=double
"setglobal expandtab
setglobal tabstop=4
setglobal softtabstop=4
setglobal autoindent
setglobal smartindent
setglobal shiftwidth=4
setglobal incsearch
setglobal ignorecase
setglobal smartcase
setglobal hlsearch
setglobal wrapscan
setglobal noerrorbells
"setglobal shellslash
setglobal showmatch matchtime=1
"setglobal cinoptions+=:0
setglobal showcmd
setglobal display=lastline
setglobal listchars=tab:^.,trail:~,eol:$,extends:>,precedes:<,nbsp:␣
setglobal history=1000
setglobal guioptions-=T
setglobal guioptions-=a
setglobal noswapfile
setglobal title
setglobal clipboard=unnamed,autoselect
setglobal whichwrap=b,s,h,l,<,>,[,],~
setglobal mouse=a
setglobal fileformat=dos
setglobal formatoptions+=mb
setglobal number
setglobal nrformats-=octal
setglobal hidden
setglobal backspace=indent,eol,start
setglobal cursorline
setglobal wildmenu
setglobal noshowmode

if !has('win32') && !has('win64')
	setglobal shell=/bin/bash
endif

if exists('&termguicolors')
	setglobal termguicolors
endif

syntax enable
set t_Co=256

set guifont=HackGenNerd:h14:cSHIFTJIS:qDRAFT
"set guifontwide=HackGen_Console_for_Powerline:h12:cSHIFTJIS:qDRAFT

if exists('&completeslash')
	setglobal completeslash=slash
endif

let g:no_gvimrc_example=1
let g:no_vimrc_example=1

let g:loaded_gzip               = 1
let g:loaded_tar                = 1
let g:loaded_tarPlugin          = 1
let g:loaded_zip                = 1
let g:loaded_zipPlugin          = 1
let g:loaded_rrhelper           = 1
let g:loaded_vimball            = 1
let g:loaded_vimballPlugin      = 1
let g:loaded_getscript          = 1
let g:loaded_getscriptPlugin    = 1
"let g:loaded_netrw              = 1
"let g:loaded_netrwPlugin        = 1
"let g:loaded_netrwSettings      = 1
"let g:loaded_netrwFileHandlers  = 1
let g:did_install_default_menus = 1
let g:skip_loading_mswin        = 1
let g:did_install_syntax_menu   = 1
"let g:loaded_2html_plugin       = 1

let g:mapleader = "\<Space>"
let g:maplocalleader = ','

" git commit 時にはプラグインは読み込まない
if $HOME != $USERPROFILE && $GIT_EXEC_PATH != ''
	finish
end

" プラグインの読み込み
let g:plug_shallow = 0

" プラグイン設定 {{{
call plug#begin('~/.vim/plugged')

Plug 'jacoborus/tender.vim'
Plug 'ryanoasis/vim-devicons'
	Plug 'itchyny/lightline.vim'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'cocopon/vaffle.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'tpope/vim-fugitive'
Plug 'tacahiroy/ctrlp-funky'
Plug 'suy/vim-ctrlp-commandline'
Plug 'thinca/vim-ambicmd'
Plug 'thinca/vim-openbuf'
Plug 'thinca/vim-quickrun'
Plug 'Shougo/unite.vim'
Plug 'Shougo/context_filetype.vim'
Plug 'haya14busa/vim-migemo'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'markonm/traces.vim'
Plug 'Yggdroot/indentLine'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'rhysd/committia.vim'
Plug 'cohama/agit.vim'
Plug 'machakann/vim-highlightedyank'

call plug#end()
" }}}
" 各種設定の読み込み
call map(sort(split(globpath(&runtimepath, '_config/*.vim'))), {->[execute('exec "so" v:val')]})

