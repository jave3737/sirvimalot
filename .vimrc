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
"set colorcolumn=81
set completeopt-=preview
set backspace=indent,eol,start
set switchbuf+=useopen
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
call plug#begin('~/.vim/plugged')
Plug 'fcpg/vim-fahrenheit'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf.vim'
Plug 'markonm/traces.vim'
Plug 'sheerun/vim-polyglot'
Plug 'wincent/ferret'
Plug 'dense-analysis/ale'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'preservim/tagbar'
Plug 'idanarye/vim-merginal'
Plug 'airblade/vim-gitgutter'
"Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/asyncrun.vim'
Plug 'liuchengxu/vista.vim'
Plug 'junegunn/gv.vim'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'junegunn/goyo.vim'
call plug#end()
packadd termdebug
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"CONFIGURE PLUGINS {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
packloadall
silent! helptags ALL

"debugging
let g:termdebugger = "gdb-multiarch"
let g:termdebug_popup = 0
let g:termdebug_wide = 163

"vim-notes
let g:notes_suffix='.txt'
let g:notes_directories=['$HOME/notes']

""fzf
source $HOME/fzf/plugin/fzf.vim
let g:fzf_layout = { 'down': '40%' }
set hidden

"ferret
let g:FerretMap = 0

""startify
let g:startify_custom_header = [
                \ '      _          _ _                            _     _ ',
            \ '     | |        | | |                          | |   | |',
            \ '     | |__   ___| | | ___   __      _____  _ __| | __| |',
            \ '     | ''_ \ / _ \ | |/ _ \  \ \ /\ / / _ \| ''__| |/ _` |',
            \ '     | | | |  __/ | | (_) |  \ V  V / (_) | |  | | (_| |',
            \ '     |_| |_|\___|_|_|\___/    \_/\_/ \___/|_|  |_|\__,_|',
            \]

let g:startify_bookmarks = [
        \ '~/sirvimalot/.vimrc'
    \]

let g:startify_session_dir = '$HOME/sessions'

let g:startify_lists = [
        \ { 'type': 'bookmarks', 'header': ['Bookmarks']},
    \ { 'type' : 'sessions', 'header' : ['Sessions']},
    \]

" sessions
let g:session_autoload = 'no'
let g:session_autosave = 'yes'
let g:session_directory =$HOME . '/sessions'

"mucomplete
set completeopt+=menuone
set completeopt+=noinsert
set completeopt+=noselect
let g:mucomplete#enable_auto_at_startup = 1

"polyglot 
let g:polyglot_disable=['markdown']

""ale
"let b:ale_linters = ['markdownlint', 'vale']
"let b:ale_fixers = ['prettier']
"asyncrun
let g:asyncrun_open=6
let g:LanguageClient_serverCommands = {
            \ 'c': ['~/ccls/Release/ccls','--log-file=/tmp/cc.log'],
            \ 'cpp': ['~/ccls/Release/ccls','--log-file=/tmp/cc.log'],
            \ 'rust' :['rust-analyzer'],
            \ }
let g:LanguageClient_loadSettings = 1
let g:LanguageClient_settingsPath = '~/.config/nvim/settings.json'
set completefunc=LanguageClient#complete

let g:lightline = {
            \ 'active': {
            \ 'left': [ [ 'mode', 'paste' ],
            \ [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
            \ },
            \ 'component_function': {
            \ 'gitbranch': 'FugitiveHead'
            \ },
            \ }

let g:gutentags_file_list_command = {
            \ 'markers': {
            \ '.git': 'bash -c "git ls-files; git ls-files --others --exclude-standard"',
            \ },
            \ }

let g:vista_default_executive = 'lcn'
let g:vista_ignore_kinds = ['255']

"vim-markdown
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_math = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_edit_url_in = 'tab'
let g:vim_markdown_follow_anchor = 1
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"AUTOCMD {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd FileType markdown set cursorline
"autocmd Filetype markdown set conceallevel=2
autocmd FileType markdown setlocal spell spelllang=en_gb linebreak textwidth=80 wrap
"autocmd FileType markdown Goyo
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"KEYMAPPINGS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"quickfix
nnoremap <leader>f :Files<CR>
nnoremap <leader>d :GFiles<CR>
nnoremap <leader>s :BLines<CR>
nnoremap <leader>a :History:<CR>
nnoremap <leader>q :vertical help quickref<CR>

map <space> <C-W>
nnoremap <C-H> :cp<CR>
nnoremap <C-L> :cn<CR>
nnoremap <C-K> :copen<CR>
nnoremap <C-J> :cclose<CR>
nnoremap <C-W>; :tabnext<CR>
nnoremap <C-W>, :tabprevious<CR>
nnoremap <leader><leader> :b#<CR>
"tnoremap <ESC> <C-\><C-n>

"some compatibility with general editing keybindings
inoremap <C-S> <C-O>:w<CR>
inoremap <C-backspace> <C-W>
inoremap <C-left> <C-O>B
inoremap <C-right> <C-O>W
inoremap <C-Del> <C-O>dW
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
colorscheme fahrenheit
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"MAXIMIZE THE WINDOW {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    au GUIEnter * simalt ~x
endif
"}}}
