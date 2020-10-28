""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"SET COLORSCHEME {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme desert    
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ENABLE GREP {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('rg')
    set grepprg=rg\ --vimgrep
elseif executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
else 
    set grepprg=grep\ 
endif
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ENABLE SYNTAX {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"STANDARD TERMINAL OPTIONS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set diffexpr=
set nocompatible
set wildmenu
set guioptions=
set ignorecase 
set smartcase
set nowrapscan
set nowrap 
set nobackup
set noswapfile
set splitbelow
set splitright
set sessionoptions-=options
set sessionoptions-=folds
set nohlsearch
set statusline=%t
set laststatus=2
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set textwidth=0
set sessionoptions+=tabpages,globals
set updatetime=100
set noerrorbells
set novisualbell
set nonumber
set tags=./tags,tags;$HOME
set encoding=utf-8
set foldmethod=marker 
set cursorline
set colorcolumn=81
set completeopt-=preview
set pythonthreehome=$HOME/python38/python-3.8.0/
set pythonthreedll=$HOME/python38/python-3.8.0/python38.dll
if has('cscope')
    set cscopetag cscopeverbose
    if has('quickfix')
        set cscopequickfix=s-,c-,d-,i-,t-,e-
    endif
endif
if $TERM == "xterm-256color"
    set t_Co=256
endif
if has("gui_running")
    set guifont=Dank_Mono:h14:cANSI:qDRAFT,Consolas:h18:cANSI:qDRAFT
    set belloff=all
endif
if has("persistent_undo")
    set undodir=$HOME/undodir
    set undofile
endif
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ESSENTIAL KEYMAPPINGS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <space> <C-W>
nnoremap <leader>qq :help quickref<CR>
nnoremap <leader><leader> :b#<CR>
" faster navigation in the quickfix window
nnoremap <C-H> :cp<CR>
nnoremap <C-J> :cclose<CR>
nnoremap <C-K> :bo copen<CR>
nnoremap <C-L> :cn<CR>
"windows behavior
nnoremap <C-S> :w<cr>
inoremap <C-BS> <C-W>
inoremap <C-Del> <c-o>de
inoremap <C-S> <c-o>:w<cr>
inoremap <C-H> <C-left>
inoremap <C-L> <C-right>
" move around tabs faster
nnoremap <C-W>' :tabnext<CR>
nnoremap <C-W>; :tabprevious<CR>
nnoremap <C-W>t :tabnew %<CR><C-O>
"shift the screen
nnoremap H 15zh
nnoremap L 15zl
nnoremap <C-E> 5<C-E> 
nnoremap <C-Y> 5<C-Y>
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ENABLE PLUGINS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
packloadall
silent! helptags ALL
call plug#begin('~/.vim/plugged')
Plug 'Yggdroot/LeaderF'
Plug 'airblade/vim-gitgutter'
Plug 'cocopon/iceberg.vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/gv.vim'
Plug 'markonm/traces.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'unblevable/quick-scope'
Plug 'wincent/ferret'
Plug 'liuchengxu/vim-which-key' 
call plug#end()
let g:FerretMap = 0
call which_key#register('\', "g:which_key_map")
let g:which_key_use_floating_win = 1
let g:which_key_map = {}
let g:which_key_map.0 = 'which_key_ignore'
let g:which_key_map.1 = 'which_key_ignore'
let g:which_key_map.2 = 'which_key_ignore'
let g:which_key_map.3 = 'which_key_ignore'
let g:which_key_map.4 = 'which_key_ignore'
let g:which_key_map.5 = 'which_key_ignore'
let g:which_key_map.6 = 'which_key_ignore'
let g:which_key_map.7 = 'which_key_ignore'
let g:which_key_map.8 = 'which_key_ignore'
let g:which_key_map.9 = 'which_key_ignore'
let g:which_key_use_floating_win = 1
let g:which_key_map.f = { 'name' : 'leaderf'}
let g:which_key_map.w = { 'name' : 'window settings'}
let g:which_key_map.s = { 'name' : 'ferret'}
let g:which_key_map.v = { 'name' : 'vim settings'}
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:Lf_WindowHeight = 0.2
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool=0
let g:Lf_DefaultMode='NameOnly'
let g:Lf_HideHelp=1
let g:Lf_ShortcutF=''
let g:Lf_ShortcutB=''
let g:Lf_WorkingDirectoryMode='Ac'
let g:Lf_RootMarkers = ['.git','.root']
let g:Lf_ShowDevIcons=0
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeShowHidden=1
let g:NERDTreeWinSize=30
let g:NERDTreeMinimalUI=1
nnoremap <leader>fd :LeaderfLine<CR>
nnoremap <leader>ff :LeaderfFile<CR>
nnoremap <leader>fs :LeaderfMru<cr>
nnoremap <leader>wf :set number!<cr>
nnoremap <leader>wd :set ignorecase!<cr>
nmap <leader>sf <Plug>(FerretAck)
nmap <leader>sd <Plug>(FerretAckWord)
nnoremap <leader>vf :e $VIM\_vimrc<cr>
nnoremap <leader>vd :e $VIM\_vimpluginsettings.vim<cr>
" which key settings which creates the menu when hitting the leader key
nnoremap <silent> <leader> :WhichKey '\'<CR>
vnoremap <silent> <leader> :WhichKey '\'<CR>
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ENABLE ADDITIONAL PLUGINS{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand("$HOME/_vimpluginsettings.vim"))
    source $HOME/_vimpluginsettings.vim
endif
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"CONFIGURE COLORSCHEME{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme settings
augroup iceberg_custom
    au!
    autocmd ColorScheme iceberg highlight QuickScopePrimary guifg=GreenYellow gui=bold ctermfg=Green
    autocmd ColorScheme iceberg highlight QuickScopeSecondary guifg=DarkOrange gui=bold ctermfg=Red
    autocmd ColorScheme iceberg highlight ColorColumn guibg=#5f0000 ctermbg=DarkRed
augroup end
colorscheme iceberg
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"MAXIMIZE THE WINDOW {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    au GUIEnter * simalt ~x
endif
"}}}
cd $VIM_ROOT

