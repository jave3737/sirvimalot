source $VIM\fzf\plugin\fzf.vim
"{{{
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
call plug#end()
"}}}
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:Lf_WindowHeight = 0.2
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool=0
let g:Lf_DefaultMode='NameOnly'
let g:Lf_HideHelp=1
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
let g:gitlab_api_keys = {'https://gitlab.draper.com':'vCxa7BayZKsUtqYxbjKA'}
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
nnoremap <silent> <Up> :call animate#window_delta_height(10)<CR>
nnoremap <silent> <Down> :call animate#window_delta_height(-10)<CR>
nnoremap <silent> <Left> :call animate#window_delta_width(10)<CR>
nnoremap <silent> <Right> :call animate#window_delta_width(-10)<CR>
set diffexpr=
map <space> <C-W>
nnoremap <leader>f :LeaderfFile<CR>
nnoremap <leader>d :LeaderfLine<CR>
nnoremap <leader>s :LeaderfMru<cr>
nnoremap <C-W>t :tabnew % <CR> <C-O>
nnoremap <C-W>; :tabprevious<CR>
nnoremap <C-W>' :tabnext<CR>
nnoremap <leader>n :let @" = expand("%:t")<CR>
nnoremap <Tab> :bn<cr>
nnoremap <S-Tab> :bp<cr>
nnoremap <leader><Tab> :Bw<cr>
nnoremap <leader><S-Tab> :Bw!<cr>
nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)
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
