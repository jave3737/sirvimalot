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
set switchbuf+=uselast
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
    set guifont=Cartograph_CF:h18:cANSI:qDRAFT,Consolas:h18:cANSI:qDRAFT
    set belloff=all
endif
if has("persistent_undo")
    set undodir=$HOME/undodir
    set undofile
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"PLUGIN SETTINGS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"generate helptags
packloadall
silent! helptags ALL

"vim-notes
let g:notes_suffix='.txt'
let g:notes_directories=['$HOME/notes']

"fzf
source $HOME/fzf/plugin/fzf.vim
let g:fzf_layout = { 'down': '40%' }
set hidden

"ferret
let g:FerretMap = 0

"startify
let g:startify_custom_header = [
            \ '      _          _ _                            _     _ ',
            \ '     | |        | | |                          | |   | |',
            \ '     | |__   ___| | | ___   __      _____  _ __| | __| |',
            \ '     | ''_ \ / _ \ | |/ _ \  \ \ /\ / / _ \| ''__| |/ _` |',
            \ '     | | | |  __/ | | (_) |  \ V  V / (_) | |  | | (_| |',
            \ '     |_| |_|\___|_|_|\___/    \_/\_/ \___/|_|  |_|\__,_|',
            \]

let g:startify_bookmarks = [
    \ '$HOME/_vimrc',
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

" quick-scope
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"KEYMAPPINGS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

"some compatibility with general editing keybindings
inoremap <C-S> <C-O>:w<CR>
inoremap <C-backspace> <C-W>
inoremap <C-left> <C-O>B
inoremap <C-right> <C-O>W
inoremap <C-Del> <C-O>dW
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"COLORSCHEME {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme fahrenheit
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"WINDOW {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    au GUIEnter * simalt ~x
endif
"}}}
