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
Plug 'ghifarit53/tokyonight-vim'
Plug 'wadackel/vim-dogrun'
Plug 'AndrewRadev/linediff.vim'
Plug 'Yggdroot/LeaderF'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'cocopon/iceberg.vim'
Plug 'cohama/agit.vim'
Plug 'derekmcloughlin/gvimfullscreen_win32'
Plug 'dreadnaut/vim-bargreybars'
Plug 'fcpg/vim-fahrenheit'
Plug 'fedorenchik/VimCalc3'
Plug 'guns/xterm-color-table.vim'
Plug 'idanarye/vim-merginal'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-peekaboo'
Plug 'kshenoy/vim-signature'
Plug 'liuchengxu/vim-which-key' 
Plug 'markonm/traces.vim'
Plug 'preservim/nerdtree'
Plug 'rhysd/git-messenger.vim'
Plug 'sheerun/vim-polyglot'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'tpope/vim-fugitive'
Plug 'unblevable/quick-scope'
Plug 'wincent/ferret'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"CONFIGURE PLUGINS {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:FerretMap = 0
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
let g:no_csv_maps=1
let g:peekaboo_window='vert bo 100new'
let g:VCalc_Win_Size = 30
let g:VCalc_WindowPosition = 'left'
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
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"KEYMAPPINGS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-H> :cp<CR>
nnoremap <C-J> :cclose<CR>
nnoremap <C-K> :bo copen<CR>
nnoremap <C-L> :cn<CR>
nnoremap <C-S> :w<cr>
inoremap <C-BS> <C-W>
inoremap <C-Del> <c-o>de
inoremap <C-S> <c-o>:w<cr>
inoremap <C-H> <C-left>
inoremap <C-L> <C-right>
map <space> <C-W>
nnoremap <C-W>' :tabnext<CR>
nnoremap <C-W>; :tabprevious<CR>
nnoremap <C-W>t :tabnew %<CR><C-O>
nnoremap H 5zh
nnoremap L 5zl
nnoremap J <C-E>
nnoremap K <C-Y>
nmap [c <Plug>(GitGutterPrevHunk)
nmap ]c <Plug>(GitGutterNextHunk)
"leader 
nnoremap <silent> <leader> :WhichKey '\'<CR>
vnoremap <silent> <leader> :WhichKey '\'<CR>
nnoremap <leader><leader> :b#<CR>
let g:which_key_map.s = {
            \ 'name' : 'ferret',
            \ 'd' : 'search word under cursor',
            \ 'f' : 'start search',
            \ }
nmap <leader>sd <Plug>(FerretAckWord)
nmap <leader>sf <Plug>(FerretAck)
let g:which_key_map.d = {
            \ 'name' : 'fzf',
            \ 'a' : 'search marks',
            \ 'd' : 'search lines',
            \ 'f' : 'search files',
            \ 's' : 'search commits',
            \ }
nnoremap <leader>da :Marks<cr>
nnoremap <leader>dd :BLines<cr>
nnoremap <leader>df :Files<cr>
nnoremap <leader>ds :Commits<cr>
let g:which_key_map.f = {
            \ 'name' : 'leaderf',
            \ 'f' : 'search files',
            \ 'd' : 'search lines',
            \ 's' : 'most recently used',
            \ 'r' : 'ripgrep search',
            \ 'c' : 'search colorscheme',
            \ 'h' : 'search history',
            \ 'b' : 'search buffer',
            \ }
nnoremap <leader>fd :LeaderfLine<CR>
nnoremap <leader>ff :LeaderfFile<CR>
nnoremap <leader>fs :LeaderfMru<cr>
nnoremap <leader>fr :Leaderf rg<cr>
nnoremap <leader>fc :LeaderfColorscheme<cr>
nnoremap <leader>fh :LeaderfHistoryCmd<cr>
nnoremap <leader>fb :LeaderfBuffer<cr>
let g:which_key_map.g = {
            \ 'name' : 'git',
            \ 'a' : 'line commit message',
            \ 'f' : 'fetch',
            \ 's' : 'toggle branch list',
            \ 'v' : 'show tree',
            \ 'x' : 'current file history',
            \ 'z' : 'diff w/last commit',
            \ 'd' : 'diff file w/current head',
            \ 'j' : 'diff file w/master',
            \ 'k' : 'diff file w/develop',
            \ 'e' : 'stage hunk',
            \ 'r' : 'preview hunk',
            \ 'u' : 'undo hunk',
            \ }
nnoremap <leader>ga <Plug>(git-messenger)
nnoremap <leader>gc :Agit<cr>
nnoremap <leader>gf :Gfetch<cr>
nnoremap <leader>gs :MerginalToggle<cr>
nnoremap <leader>gv :GV<cr>
nnoremap <leader>gx :0Glog<cr>
nnoremap <leader>gz :Gvdiffsplit HEAD~1<cr>
nnoremap <leader>gb :Git blame<cr>
nnoremap <leader>gd :Gdiffsplit<cr>
nnoremap <leader>gj :Gdiffsplit master<cr>
nnoremap <leader>gk :Gdiffsplit develop<cr>
nmap <leader>ge <Plug>(GitGutterStageHunk)
nmap <leader>gr <Plug>(GitGutterPreviewHunk)
nmap <leader>gw <Plug>(GitGutterUndoHunk)
let g:which_key_map.n = {
            \ 'name' : 'nerdtree',
            \ 'f' : 'toggle tree',
            \ }
nnoremap <leader>nf :NERDTreeToggle<cr>
let g:which_key_map.q = {
            \ 'name' : 'help',
            \ 'q' : 'quick reference',
            \ }
nnoremap <leader>qq :help quickref<CR>
let g:which_key_map.w = {
            \ 'name' : 'settings',
            \ 'd' : 'toggle ignorecase',
            \ 'f' : 'toggle line numbers',
            \ 'g' : 'open font menu',
            \ 'w' : 'toggle wrap',
            \ }
nnoremap <leader>wd :set ignorecase!<cr>
nnoremap <leader>wf :set number!<cr>
nnoremap <leader>wg :set guifont=*<cr>
nnoremap <leader>ww :set wrap!<cr>
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
augroup dogrun_custom
    au!
    autocmd ColorScheme dogrun highlight QuickScopePrimary guifg=GreenYellow gui=bold ctermfg=Green
    autocmd ColorScheme dogrun highlight QuickScopeSecondary guifg=DarkOrange gui=bold ctermfg=Red
    autocmd ColorScheme dogrun highlight ColorColumn guibg=#5f0000 ctermbg=DarkRed
augroup end
colorscheme dogrun
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"MAXIMIZE THE WINDOW {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    au GUIEnter * simalt ~x
endif
"}}}
