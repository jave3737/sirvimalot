""""""""""""""""""""""""""""""""""""""""""""""""""
"ENABLE WINDOWS BEHAVIOR
""""""""""""""""""""""""""""""""""""""""""""""""""
source $VIMRUNTIME/mswin.vim
behave mswin 
au GUIEnter * simalt ~x
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
"Do not generate backup files of any sort"
set nowrap 
set nobackup
set noswapfile
set noundofile
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
""""""""""""""""""""""""""""""""""""""""""""""""""
"ENABLE PLUGINS 
""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#infect()
filetype plugin indent on
""""""""""""""""""""""""""""""""""""""""""""""""""
"SOURCE THE CUSTOM USER FILE 
""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable('_vimcurrusr.vim')
    source $HOME/vimusrs/_vimcurrusr.vim
endif
""""""""""""""""""""""""""""""""""""""""""""""""""
"SOURCE THE PLUGIN SETTINGS USER FILE
""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable('_vimpluginsettings.vim')
    source $HOME/_vimpluginsettings.vim
endif
