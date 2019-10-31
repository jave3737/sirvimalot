""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ENABLE WINDOWS BEHAVIOR {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $VIMRUNTIME/mswin.vim
behave mswin 
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"SETTINGS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
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
if $TERM == "xterm-256color"
    set t_Co=256
endif
if has('cscope') 
    set cscopetag cscopeverbose
    if has('quickfix')
        set cscopequickfix=s-,c-,d-,i-,t-,e-
    endif
endif 
if has("gui_running") 
    set guifont=Dank_Mono:h18:cANSI:qDRAFT,Consolas:h15:cANSI:qDRAFT
    set belloff=all
endif 
if has("persistent_undo") 
    set undodir=$HOME/undodir
    set undofile
endif 
if executable('rg') 
    set grepprg=rg\ --vimgrep
elseif executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
else 
    set grepprg=grep\ 
endif
"augroup filetypedetect
"    au! BufRead,BufNewFile *.c setfiletype cpp 
"augroup END
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{ KEYMAPPINGS 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <C-E> <C-E>
inoremap <C-F> <ESC>gUiw`]a
inoremap <C-Y> <C-Y>
nnoremap <C-A> <C-A>
nnoremap <C-B> <C-B>
nnoremap <C-F> <C-F>
nnoremap <C-X> <C-X>
nnoremap <C-E> 5<C-E> 
nnoremap <C-Y> 5<C-Y>
nnoremap zh 20zh
nnoremap zl 20zl
nnoremap <C-H> :cprevious<CR>
nnoremap <C-L> :cnext<CR>
nnoremap <C-J> :cclose<CR>
nnoremap <C-K> :copen<CR>
nmap <space> <C-W>
nnoremap <leader><leader>f :LeaderfFile<CR>
nnoremap <leader><leader>d :LeaderfBufTag<CR>
nnoremap <leader><leader>s :NERDTreeToggle<CR>
nnoremap <leader><leader>a :set relativenumber!<CR>
if executable('rg')
    nnoremap <leader><leader>g :execute(":grep! " . expand('<cword>'))<CR>
    nnoremap <leader><leader>v :execute(":grep! -type=c " 
                \. expand('<cword>'))<CR>
elseif executable('ag')
else 
    nnoremap <leader><leader>g :execute(":grep! -rin " . expand('<cword>') 
                \. " ." )<CR>
    nnoremap <leader><leader>v :execute(":grep! -rin --include \*.h --include
                \\*.c " . expand('<cword>') . " ." )<CR>
endif
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{ QUICK ACCESS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd VimEnter * bad $HOME/_vimrc
autocmd VimEnter * bad $HOME/.vimrc
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{ FUNCTIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! SwapBackslash() 
    :s/\\/\//g
endfunction 
function! SwapForwardslash() 
    :s/\//\\/g
endfunction 
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{ ENABLE PLUGINS 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#infect()
filetype plugin indent on
packloadall
silent! helptags ALL
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{ PLUGIN SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:Lf_WindowHeight = 0.2
let g:Lf_RgConfig = [
            \"--type=cmake",
            \"--type=c",
            \"--type=verilog",
            \"--type=vhdl",
            \"--type=txt",
            \"--type=html",
            \"--type=js",
            \"--type=yaml"
            \]
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_DefaultMode='NameOnly'
let g:Lf_ShortcutF=''
let g:Lf_ShortcutB=''
let g:Lf_Ctags=$HOME . '/executables/ctags.exe'
let g:Lf_HideHelp=1
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeShowHidden=1
let g:NERDTreeWinSize=30
let g:NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable="→"
let g:NERDTreeDirArrowCollapsable="↓"
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:netrw_winsize=30
let g:VCalc_WindowPosition = 'left'
let g:VCalc_Win_Size = 30
let g:git_messenger_git_command=$HOME . '/PortableGit/bin/git.exe'
let g:gitgutter_git_executable=$HOME . '/PortableGit/bin/git.exe'
let g:gutentags_ctags_executable=$HOME . '/executables/ctags.exe'
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{ COLORSCHEME SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup fahrenheit 
    au! 
    autocmd ColorScheme fahrenheit highlight QuickScopePrimary      
                \guifg=GreenYellow gui=bold ctermfg=Green
    autocmd ColorScheme fahrenheit highlight QuickScopeSecondary    
                \guifg=DarkOrange  gui=bold ctermfg=Red
    autocmd ColorScheme fahrenheit highlight ColorColumn 
                \guibg=#5f0000 ctermbg=DarkRed
augroup end 
colorscheme fahrenheit
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{ MAXIMIZE THE WINDOW
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    au GUIEnter * simalt ~x
endif
"}}}
