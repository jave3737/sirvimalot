""""""""""""""""""""""""""""""""""""""""""""""""""
"BEHAVIOR
""""""""""""""""""""""""""""""""""""""""""""""""""
source $VIMRUNTIME/mswin.vim
behave mswin 
au GUIEnter * simalt ~x
colorscheme desert    
set grepprg=grep\ 
syntax on
""""""""""""""""""""""""""""""""""""""""""""""""""
"TERMINAL SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu
set path+=**
set guioptions=
set ignorecase 
set nowrap 
set nobackup
set noswapfile
set noundofile
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
set sessionoptions+=tabpages,globals
set nocompatible
set updatetime=100
set noerrorbells
set novisualbell
set belloff=all
set showmatch
set ruler
""""""""""""""""""""""""""""""""""""""""""""""""""
"KEY MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>ev  :vsplit $MYVIMRC <cr>
nnoremap <leader>sv  :source $MYVIMRC <cr>
nnoremap <leader>r   :help quickref <cr>
nnoremap <C-Left>    :tabprevious<CR>
nnoremap <C-Right>   :tabnext<CR>
nnoremap <C-t>       a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
inoremap <C-t>       <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
nnoremap _           5<C-w><<CR>
nnoremap +           5<C-w>><CR>
nnoremap -           5<C-w>-<CR>
nnoremap =           5<C-w>+<CR>
imap     jj          <Esc>:w<CR>
xmap     ga          <Plug>(EasyAlign)
nmap     ga          <Plug>(EasyAlign)
""""""""""""""""""""""""""""""""""""""""""""""""""
"PLUGINS 
""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#infect()
filetype plugin indent on
let g:UltiSnipsEditSplit          = 'vertical'
let g:UltiSnipsSnippetDirectories = [$HOME . "/vimfiles/custom_snippets"]
let g:UltiSnipsUsePythonVersion   = 3
let g:UltiSnipsExpandTrigger = "<tab>"
""""""""""""""""""""""""""""""""""""""""""""""""""
"CUSTOM 
""""""""""""""""""""""""""""""""""""""""""""""""""
source $HOME/vimusrs/_vimcurrusr.vim
