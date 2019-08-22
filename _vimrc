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
"Enable Wildmenu"
set wildmenu
"Clear all gui options"
set guioptions=
"Ignore case when pattern searching"
set ignorecase 
set smartcase
set nowrapscan
"Do not generate backup files of any sort"
set nowrap 
set nobackup
set noswapfile
"How we want to split windows"
set splitbelow
set splitright
set sessionoptions-=options
set sessionoptions-=folds
"Do not highlight when searching"
set nohlsearch
"Only set the file name in the status line"
set statusline=%t
set laststatus=2
"Set one tab to equal four spaces"
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set textwidth=80
set sessionoptions+=tabpages,globals
"Do not try to behave like old vim"
set nocompatible
set updatetime=100
"Disable error sounds"
set noerrorbells
set novisualbell
set belloff=all
"set line numbers
set number
"set path for tag file
set tags=tags;/
"set the default font
set guifont=Dank_Mono:h12:cANSI:qDRAFT,Consolas:h12:cANSI:qDRAFT
"enable ligatures
set renderoptions=type:directx
set encoding=utf-8
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
nnoremap <up> :cnext <CR>
nnoremap <down> :cprevious <CR>
nnoremap <left> :tabprevious <CR>
nnoremap <right> :tabnext <CR>
""""""""""""""""""""""""""""""""""""""""""""""""""
"ENABLE PLUGINS 
""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#infect()
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
au GUIEnter * simalt ~x
