""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"PLUGINS{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $VIM\fzf\plugin\fzf.vim
call plug#begin('~/.vim/plugged')
Plug 'camspiers/lens.vim'
Plug 'camspiers/animate.vim'
Plug 'guns/xterm-color-table.vim'
Plug 'bagrat/vim-buffet'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/agit.vim'
Plug 'derekmcloughlin/gvimfullscreen_win32'
Plug 'dreadnaut/vim-bargreybars'
Plug 'fedorenchik/VimCalc3'
Plug 'idanarye/vim-merginal'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-peekaboo'
Plug 'rhysd/git-messenger.vim'
Plug 'sheerun/vim-polyglot'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'AndrewRadev/bufferize.vim'
Plug 'AndrewRadev/linediff.vim'
Plug 'kshenoy/vim-signature'
call plug#end()
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"PLUGIN SETTINGS{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:no_csv_maps=1
let g:peekaboo_window='vert bo 100new'
let g:fugitive_gitlab_domains = ['https://gitlab.draper.com']
let g:gitlab_api_keys = {'https://gitlab.draper.com':'key'}
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
let g:which_key_map.d = { 'name' : 'fzf'}
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"PLUGIN KEYMAPPINGS {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" move between buffers quickly for bufferize
nnoremap <S-Tab> :bp<cr>
nnoremap <Tab> :bn<cr>
nnoremap <leader><S-Tab> :Bw!<cr>
nnoremap <leader><Tab> :Bw<cr>
" leader settings
nnoremap <leader>df :Files<cr>
nnoremap <leader>dd :BLines<cr>
nnoremap <leader>ds :Commits<cr>
nnoremap <leader>da :Marks<cr>
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"COLORSCHEME SETTINGS{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! g:BuffetSetCustomColors()
  hi! BuffetCurrentBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#5faf87 guifg=#000000
  hi! BuffetTab cterm=NONE ctermbg=5 ctermfg=8 guibg=#ff8787 guifg=#000000
  hi! BuffetActiveBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#000000 guifg=#ff8787
endfunction
"}}}
