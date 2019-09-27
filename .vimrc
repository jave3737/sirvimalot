""""""""""""""""""""""""""""""""""""""""""""""""""
"ENABLE WINDOWS BEHAVIOR
""""""""""""""""""""""""""""""""""""""""""""""""""
source $VIMRUNTIME/mswin.vim
behave mswin 
""""""""""""""""""""""""""""""""""""""""""""""""""
"SET COLORSCHEME
""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme desert    
""""""""""""""""""""""""""""""""""""""""""""""""""
"ENABLE GREP
""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('rg')
    set grepprg=rg\ --vimgrep
elseif executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
else 
    set grepprg=grep\ 
endif
""""""""""""""""""""""""""""""""""""""""""""""""""
"ENABLE SYNTAX
""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
""""""""""""""""""""""""""""""""""""""""""""""""""
"STANDARD TERMINAL OPTIONS
""""""""""""""""""""""""""""""""""""""""""""""""""
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
set nocompatible
set updatetime=100
set noerrorbells
set novisualbell
set number
set tags=tags;/
set encoding=utf-8
if has("gui_running")
    set guifont=Dank_Mono:h16:cANSI:qDRAFT,Consolas:h12:cANSI:qDRAFT
    set belloff=all
    set renderoptions=type:directx
endif
""""""""""""""""""""""""""""""""""""""""""""""""""
"KEYMAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-F> <C-F>
nnoremap <C-B> <C-B>
nnoremap <C-E> 5<C-E> 
nnoremap <C-Y> 5<C-Y>
nnoremap zh 20zh
nnoremap zl 20zl
inoremap <C-E> <C-E>
inoremap <C-Y> <C-Y>
nnoremap <C-A> <C-A>
nnoremap <C-X> <C-X>
nnoremap <leader>q :help quickref<CR>
inoremap <C-F> <ESC>gUiw`]a
""""""""""""""""""""""""""""""""""""""""""""""""""
"ENABLE PLUGINS 
""""""""""""""""""""""""""""""""""""""""""""""""""
silent! call pathogen#infect()
filetype plugin indent on
if filereadable(expand("$HOME/_vimpluginsettings.vim"))
    source $HOME/_vimpluginsettings.vim
endif
""""""""""""""""""""""""""""""""""""""""""""""""""
"SOURCE THE CUSTOM USER FILE 
""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand("$HOME/vimusrs/_vimcurrusr.vim"))
    source $HOME/vimusrs/_vimcurrusr.vim
endif
""""""""""""""""""""""""""""""""""""""""""""""""""
"MAXIMIZE THE WINDOW
""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    au GUIEnter * simalt ~x
endif