""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ENABLE PLUGINS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged/')
Plug 'Yggdroot/LeaderF'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter' 
Plug 'cohama/agit.vim'
Plug 'fcpg/vim-fahrenheit'
Plug 'fcpg/vim-fahrenheit'
Plug 'fedorenchik/VimCalc3'
Plug 'gcmt/taboo.vim'
Plug 'guns/xterm-color-table.vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/gv.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-peekaboo'
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'unblevable/quick-scope'
Plug 'jsfaint/gen_tags.vim'
Plug 'davidhalter/jedi-vim'
call plug#end()
"source ~/.fzf/plugin/fzf.vim
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"PLUGIN SETTINGS{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ruby_host_prog = 'C:\tools\ruby27\bin\ruby.exe'
let g:python3_host_prog = 'C:\Python38\python.exe'
let g:qs_highlight_on_keys = ['f','F','t','T']
let g:Lf_WindowHeight = 0.2
let g:Lf_RgConfig = [
            \"--type=c",
            \"--type=make",
            \"--type=cmake",
            \]
let g:Lf_PreviewResult = {'BufTag':0}
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_DefaultMode='NameOnly'
let g:Lf_ShortcutF=''
let g:Lf_ShortcutB=''
let g:Lf_HideHelp=1
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeShowHidden=1
let g:NERDTreeWinSize=30
let g:NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable="→"
let g:NERDTreeDirArrowCollapsable="↓"
let g:VCalc_Win_Size = 30
let g:VCalc_WindowPosition = 'left'
let g:tagbar_left = 1 
let g:tagbar_width = 30
let g:tagbar_compact = 1
let g:tagbar_show_linenumbers = 1
let g:tagbar_sort = 0
let g:peekaboo_window='vert bo 100new'
let g:tagbar_iconchars = ['→','↓']
let g:lightline = {'active':{'left':[['mode','paste'],['gitbranch','readonly','filename','modified']]},'component_function':{'gitbranch':'fugitive#head'},}
let g:gen_tags#gtags_default_map = 0
let g:gen_tags#use_cache_dir=0
let g:loaded_gentags#gtags=1
let g:fzf_command_prefix='F'
augroup fahrenheit_custom
    au!
    autocmd ColorScheme fahrenheit highlight QuickScopePrimary guifg=GreenYellow gui=bold ctermfg=Green
    autocmd ColorScheme fahrenheit highlight QuickScopeSecondary guifg=DarkOrange gui=bold ctermfg=Red
    autocmd ColorScheme fahrenheit highlight ColorColumn guibg=#5f0000 ctermbg=DarkRed
augroup end
colorscheme fahrenheit
"}}}
