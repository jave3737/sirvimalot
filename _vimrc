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
set pythonthreehome=$HOME/python38/python-3.8.0/
set pythonthreedll=$HOME/python38/python-3.8.0/python38.dll
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
Plug 'junegunn/goyo.vim'
Plug 'AndrewRadev/bufferize.vim'
Plug 'AndrewRadev/linediff.vim'
Plug 'Yggdroot/LeaderF'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'bagrat/vim-buffet'
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'
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
let g:FerretMap = 0
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
let g:which_key_map.f = { 'name' : 'leaderf'}
let g:which_key_map.d = { 'name' : 'fzf'}
let g:which_key_map.w = { 'name' : 'window settings'}
let g:which_key_map.s = { 'name' : 'ferret'}
let g:which_key_map.v = { 'name' : 'vim settings'}
let g:which_key_map.n = { 'name' : 'nerdtree'}
let g:which_key_map.g = { 'name' : 'git'}
let g:which_key_map.q = { 'name' : 'help'}
let g:which_key_map.r = { 'name' : 'notes'}
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
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
let g:buffet_show_index=1
let g:lens#disabled_filenames = ['nerdtree']
let g:asyncrun_status = "stopped"
let g:lightline = {'active':{
            \'left':[['mode','paste'],
            \['gitbranch','readonly','filename','modified','asyncstatus','ctags']]},
            \'component_function':{
                \'gitbranch':'fugitive#head',
                \},
            \'component':{
                \'asyncstatus':'%{g:asyncrun_status}',
                \'ctags':'%{gutentags#statusline()}',
                \}
    \}
let g:lightline = {
            \ 'enable': { 'tabline': 0},
            \ }
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
nnoremap H 15zh
nnoremap L 15zl
nnoremap <C-E> 5<C-E> 
nnoremap <C-Y> 5<C-Y>
nnoremap <S-Tab> :bp<cr>
nnoremap <Tab> :bn<cr>
nnoremap <leader><S-Tab> :Bw!<cr>
nnoremap <leader><Tab> :Bw<cr>
nnoremap <S-Tab> :bp<cr>
nnoremap <Tab> :bn<cr>
nnoremap <leader><S-Tab> :Bw!<cr>
nnoremap <leader><Tab> :Bw<cr>
nmap [c <Plug>(GitGutterPrevHunk)
nmap ]c <Plug>(GitGutterNextHunk)
nnoremap <silent> <leader> :WhichKey '\'<CR>
vnoremap <silent> <leader> :WhichKey '\'<CR>
nmap <leader>ge <Plug>(GitGutterStageHunk)
nmap <leader>ge <Plug>(GitGutterStageHunk)
nmap <leader>gr <Plug>(GitGutterPreviewHunk)
nmap <leader>gr <Plug>(GitGutterPreviewHunk)
nmap <leader>gw <Plug>(GitGutterUndoHunk)
nmap <leader>gw <Plug>(GitGutterUndoHunk)
nmap <leader>sd <Plug>(FerretAckWord)
nmap <leader>sf <Plug>(FerretAck)
nnoremap <leader><leader> :b#<CR>
nnoremap <leader>da :Marks<cr>
nnoremap <leader>dd :BLines<cr>
nnoremap <leader>df :Files<cr>
nnoremap <leader>ds :Commits<cr>
nnoremap <leader>fd :LeaderfLine<CR>
nnoremap <leader>ff :LeaderfFile<CR>
nnoremap <leader>fs :LeaderfMru<cr>
nnoremap <leader>ga <Plug>(git-messenger)
nnoremap <leader>gc :Agit<cr>
nnoremap <leader>gd :Gpull<cr>
nnoremap <leader>gf :Gfetch<cr>
nnoremap <leader>gs :MerginalToggle<cr>
nnoremap <leader>gv :GV<cr>
nnoremap <leader>nf :NERDTreeToggle<cr>
nnoremap <leader>qq :help quickref<CR>
nnoremap <leader>vd :e $VIM\_vimpluginsettings.vim<cr>
nnoremap <leader>vf :e $VIM\_vimrc<cr>
nnoremap <leader>wd :set ignorecase!<cr>
nnoremap <leader>wf :set number!<cr>
nnoremap <leader>wg :set guifont=*<cr>
nnoremap <leader>rf :Note todo<cr>
nnoremap <leader>rd :ShowTaggedNotes<cr>
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ENABLE ADDITIONAL PLUGINS{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand("$HOME/_vimpluginsettings.vim"))
    source $HOME/_vimpluginsettings.vim
endif
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"CONFIGURE COLORSCHEME{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme settings
function! g:BuffetSetCustomColors()
  hi! BuffetCurrentBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#5faf87 guifg=#000000
  hi! BuffetTab cterm=NONE ctermbg=5 ctermfg=8 guibg=#ff8787 guifg=#000000
  hi! BuffetActiveBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#000000 guifg=#ff8787
endfunction
augroup iceberg_custom
    au!
    autocmd ColorScheme iceberg highlight QuickScopePrimary guifg=GreenYellow gui=bold ctermfg=Green
    autocmd ColorScheme iceberg highlight QuickScopeSecondary guifg=DarkOrange gui=bold ctermfg=Red
    autocmd ColorScheme iceberg highlight ColorColumn guibg=#5f0000 ctermbg=DarkRed
augroup end
colorscheme iceberg
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"MAXIMIZE THE WINDOW {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    au GUIEnter * simalt ~x
endif
"}}}
cd $VIM_ROOT
