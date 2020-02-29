""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ENABLE WINDOWS BEHAVIOR {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"source $VIMRUNTIME/mswin.vim
"behave mswin 
"}}}
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
set number
set tags=./tags,tags;$HOME
set encoding=utf-8
set foldmethod=marker 
set cursorline
set colorcolumn=81
set completeopt-=preview
"set pythonthreehome=$HOME/python3/python-3.6.0/
"set pythonthreedll=$HOME/python3/python-3.6.0/python36.dll
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
    set guifont=Dank_Mono:h10:cANSI:qDRAFT,Consolas:h14:cANSI:qDRAFT
    set belloff=all
endif
if has("persistent_undo")
    set undodir=$HOME/undodir
    set undofile
endif
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"KEYMAPPINGS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-F> <C-F>
nnoremap <C-B> <C-B>
inoremap <C-E> <C-E>
inoremap <C-Y> <C-Y>
nnoremap <C-A> <C-A>
nnoremap <C-X> <C-X>
nnoremap <leader><leader> :b#<CR>
nnoremap <C-H> :cp<CR>
nnoremap <C-L> :cn<CR>
nnoremap <C-J> :cclose<CR>
nnoremap <C-K> :copen<CR>
nnoremap <C-E> 5<C-E> 
nnoremap <C-Y> 5<C-Y>
map <space> <C-W>
nnoremap <C-W>. 10<C-W>+
nnoremap <C-w>, 10<C-W>-
nnoremap <C-W>< 10<C-W><
nnoremap <C-W>> 10<C-W>>
nnoremap <C-W>; :tabprevious<CR>
nnoremap <C-W>' :tabnext<CR>
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"FUNCTIONS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ENABLE PLUGINS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged/')
Plug 'skywind3000/asyncrun.vim'
Plug 'NLKNguyen/copy-cut-paste.vim'
Plug 'Yggdroot/LeaderF'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter' 
Plug 'cohama/agit.vim'
Plug 'fcpg/vim-fahrenheit'
Plug 'fcpg/vim-fahrenheit'
Plug 'fedorenchik/VimCalc3'
Plug 'gcmt/taboo.vim'
Plug 'guns/xterm-color-table.vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/gv.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-peekaboo'
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'unblevable/quick-scope'
Plug 'jsfaint/gen_tags.vim'
call plug#end()
source ~/.fzf/plugin/fzf.vim
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"PLUGIN SETTINGS{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:qs_highlight_on_keys = ['f','F','t','T']
let g:Lf_WindowHeight = 0.2
let g:Lf_RgConfig = [
            \"--type=c",
            \"--type=make",
            \"--type=cmake",
            \]
let g:Lf_PreviewResult = {'BufTag':0}
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_DefaultMode='NameOnly'
let g:Lf_ShortcutF=''
let g:Lf_ShortcutB=''
let g:Lf_HideHelp=1
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeShowHidden=1
let g:NERDTreeWinSize=30
let g:NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable="→"
let g:NERDTreeDirArrowCollapsable="↓"
let g:VCalc_Win_Size = 30
let g:VCalc_WindowPosition = 'left'
let g:tagbar_left = 1 
let g:tagbar_width = 30
let g:tagbar_compact = 1
let g:tagbar_show_linenumbers = 1
let g:tagbar_sort = 0
let g:peekaboo_window='vert bo 100new'
let g:tagbar_iconchars = ['→','↓']
let g:lightline = {'active':{'left':[['mode','paste'],['gitbranch','readonly','filename','modified']]},'component_function':{'gitbranch':'fugitive#head'},}
let g:gen_tags#gtags_default_map = 0
let g:gen_tags#use_cache_dir=0
let g:loaded_gentags#gtags=1
let g:fzf_command_prefix='F'
augroup fahrenheit_custom
    au!
    autocmd ColorScheme fahrenheit highlight QuickScopePrimary guifg=GreenYellow gui=bold ctermfg=Green
    autocmd ColorScheme fahrenheit highlight QuickScopeSecondary guifg=DarkOrange gui=bold ctermfg=Red
    autocmd ColorScheme fahrenheit highlight ColorColumn guibg=#5f0000 ctermbg=DarkRed
augroup end
colorscheme fahrenheit
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"MAXIMIZE THE WINDOW {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    au GUIEnter * simalt ~x
endif
"}}}
