""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ENABLE WINDOWS BEHAVIOR {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $VIMRUNTIME/mswin.vim
behave mswin 
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
set pythonthreehome=$HOME/python3/python-3.6.0/
set pythonthreedll=$HOME/python3/python-3.6.0/python36.dll
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
inoremap <C-E> 5<C-E>
inoremap <C-Y> 5<C-Y>
nnoremap zh 5zh 
nnoremap zl 5zl
nnoremap <C-A> <C-A>
nnoremap <C-X> <C-X>
nnoremap <leader><leader> :b#<CR>
nnoremap <C-H> :cp<CR>
nnoremap <C-L> :cn<CR>
nnoremap <C-J> :cclose<CR>
nnoremap <C-K> :copen<CR>
inoremap <C-F> <ESC>gUiw']a
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
"QUICK ACCESS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd VimEnter * bad $HOME/.custom.vim
autocmd VimEnter * bad $HOME/_vimrc
autocmd VimEnter * bad $HOME/README.md
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"CUSTOM {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
silent! call pathogen#infect()
filetype plugin indent on
packloadall
silent! helptags ALL
if filereadable(expand("$HOME/.custom.vim"))
    source $HOME/.custom.vim
endif
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"MAXIMIZE THE WINDOW {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    au GUIEnter * simalt ~x
endif
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"CHANGE DIRECTORIES {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cd $VIM_ROOT
"}}}
