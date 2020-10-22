""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"PLUGINS{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $VIM\fzf\plugin\fzf.vim
call plug#begin('~/.vim/plugged')
Plug 'cocopon/iceberg.vim'
Plug 'camspiers/lens.vim'
Plug 'camspiers/animate.vim'
Plug 'guns/xterm-color-table.vim'
Plug 'bagrat/vim-buffet'
Plug 'Yggdroot/LeaderF'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/agit.vim'
Plug 'derekmcloughlin/gvimfullscreen_win32'
Plug 'dreadnaut/vim-bargreybars'
Plug 'fcpg/vim-fahrenheit'
Plug 'fedorenchik/VimCalc3'
Plug 'idanarye/vim-merginal'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-peekaboo'
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'
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
Plug 'liuchengxu/vim-which-key' 
Plug 'AndrewRadev/bufferize.vim'
Plug 'AndrewRadev/linediff.vim'
Plug 'kshenoy/vim-signature'
call plug#end()
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"PLUGIN SETTINGS{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:no_csv_maps=1
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:Lf_WindowHeight = 0.2
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool=0
let g:Lf_DefaultMode='NameOnly'
let g:Lf_HideHelp=1
let g:Lf_ShortcutF=''
let g:Lf_ShortcutB=''
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeShowHidden=1
let g:NERDTreeWinSize=30
let g:NERDTreeMinimalUI=1
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_compact=1
let g:tagbar_show_linenumbers = 1
let g:tagbar_sort=0
let g:tagbar_ctags_bin=$HOME . '/executables/ctags.exe'
let g:peekaboo_window='vert bo 100new'
let g:Lf_WorkingDirectoryMode='Ac'
let g:fugitive_gitlab_domains = ['https://gitlab.draper.com']
let g:gitlab_api_keys = {'https://gitlab.draper.com':'key'}
let g:VCalc_Win_Size = 30
let g:VCalc_WindowPosition = 'left'
let g:notes_suffix = '.txt'
let g:notes_directories=['$HOME/notes']
let g:gutentags_exclude_project_root=['$HOME/notes']
let g:Lf_RootMarkers = ['.git','.root']
let g:Lf_ShowDevIcons=0
let g:ale_lint_on_save=1
let g:buffet_show_index=1
let g:lens#disabled_filenames = ['nerdtree']
let g:ale_linters = {
            \'vhdl':['hdl-checker','vcom'],
            \'verilog':['hdl-checker','vlog'],
            \}
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
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"PLUGIN KEYMAPPINGS {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" retain some normal vim settings
inoremap <C-E> <C-E>
inoremap <C-Y> <C-Y>
nnoremap <C-A> <C-A>
nnoremap <C-B> <C-B>
nnoremap <C-E> 15<C-E> 
nnoremap <C-Y> 15<C-Y>
nnoremap <C-F> <C-F>
nnoremap <C-B> <C-B>
nnoremap <C-X> <C-X>
nnoremap H 15zh
nnoremap L 15zl
" faster navigation in the quickfix window
nnoremap <C-H> :cp<CR>
nnoremap <C-J> :cclose<CR>
nnoremap <C-K> :copen<CR>
nnoremap <C-L> :cn<CR>
" move around tabs faster
nnoremap <C-W>' :tabnext<CR>
nnoremap <C-W>; :tabprevious<CR>
nnoremap <C-W>t :tabnew % <CR> <C-O>
nnoremap <C-W>t :tabnew %<CR><C-O>
" move between buffers quickly
nnoremap <S-Tab> :bp<cr>
nnoremap <Tab> :bn<cr>
nnoremap <leader><S-Tab> :Bw!<cr>
nnoremap <leader><Tab> :Bw<cr>
" leader settings
nnoremap <leader>fd :LeaderfLine<CR>
nnoremap <leader>ff :LeaderfFile<CR>
nnoremap <leader>fs :LeaderfMru<cr>
nnoremap <leader>df :Files<cr>
nnoremap <leader>dd :BLines<cr>
nnoremap <leader>ds :Commits<cr>
nnoremap <leader>da :Marks<cr>
nnoremap <leader>vf :e $VIM\_vimrc<cr>
nnoremap <leader>vd :e $VIM\_vimpluginsettings.vim<cr>
nnoremap <leader>wf :set number!<cr>
nnoremap <leader>wd :set ignorecase!<cr>
nmap <leader>sf <Plug>(FerretAck)
nmap <leader>sd <Plug>(FerretAckWord)
" which key settings which creates the menu when hitting the leader key
nnoremap <silent> <leader> :WhichKey '\'<CR>
vnoremap <silent> <leader> :WhichKey '\'<CR>
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"COLORSCHEME SETTINGS{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! g:BuffetSetCustomColors()
  hi! BuffetCurrentBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#5faf87 guifg=#000000
  hi! BuffetTab cterm=NONE ctermbg=5 ctermfg=8 guibg=#ff8787 guifg=#000000
  hi! BuffetActiveBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#000000 guifg=#ff8787
endfunction
augroup fahrenheit_custom
    au!
    autocmd ColorScheme fahrenheit highlight QuickScopePrimary guifg=GreenYellow gui=bold ctermfg=Green
    autocmd ColorScheme fahrenheit highlight QuickScopeSecondary guifg=DarkOrange gui=bold ctermfg=Red
    autocmd ColorScheme fahrenheit highlight ColorColumn guibg=#5f0000 ctermbg=DarkRed
augroup end
colorscheme fahrenheit
"}}}
