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
set backspace=indent,eol,start
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
"INSTALL PLUGINS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
packloadall
silent! helptags ALL
call plug#begin('~/.vim/plugged')
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'fcpg/vim-fahrenheit'
Plug 'idanarye/vim-merginal'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'
Plug 'markonm/traces.vim'
Plug 'sheerun/vim-polyglot'
Plug 'skywind3000/asyncrun.vim'
Plug 'tpope/vim-fugitive'
Plug 'wincent/ferret'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'autozimu/LanguageClient-neovim', {
        \ 'branch': 'next',
    \ 'do': 'powershell -executionpolicy bypass -File install.ps1',
    \ } 
call plug#end()
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"CONFIGURE PLUGINS {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:FerretMap = 0
let g:notes_suffix = '.txt'
let g:notes_directories=['$HOME/notes']
let g:asyncrun_status = "done"
let g:lightline = {'active':{
            \'left':[['mode','paste'],
            \['gitbranch','readonly','filename','modified','asyncstatus']]},
            \'component_function':{
            \'gitbranch':'fugitive#head',
            \},
            \'component':{
            \'asyncstatus':'%{g:asyncrun_status}',
            \}
            \}
let g:LanguageClient_serverCommands = {
            \ 'rust': ['rust-analyzer'],
            \ }
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"KEYMAPPINGS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"quickfix
nnoremap <C-H> :cp<CR>
nnoremap <C-J> :cclose<CR>
nnoremap <C-K> :bo copen<CR>
nnoremap <C-L> :cn<CR>
"window manip
map <space> <C-W>
nnoremap <C-W>' :tabnext<CR>
nnoremap <C-W>; :tabprevious<CR>
nnoremap <C-W>t :tabnew %<CR><C-O>
"lookaround
nnoremap H 5zh
nnoremap L 5zl
nnoremap J <C-E>
nnoremap K <C-Y>
nnoremap <leader><leader> :b#<CR>
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ENABLE ADDITIONAL PLUGINS{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand("$HOME/.extra.vim"))
    source $HOME/.extra.vim
endif
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"CONFIGURE COLORSCHEME{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme settings
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
