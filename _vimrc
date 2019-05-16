""""""""""""""""""""""""""""""""""""""""""""""""""
"BEHAVIOR
""""""""""""""""""""""""""""""""""""""""""""""""""
"source $VIMRUNTIME/mswin.vim
"behave mswin 
au GUIEnter * simalt ~x
colorscheme desert    
set grepprg=grep\ 
syntax on
""""""""""""""""""""""""""""""""""""""""""""""""""
"TERMINAL SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=Dank_Mono:h8:cANSI
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
set hlsearch
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
"AUTO 
""""""""""""""""""""""""""""""""""""""""""""""""""
set number relativenumber 
:augroup numbertoggle 
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
""""""""""""""""""""""""""""""""""""""""""""""""""
"KEY MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>ev  :vsplit $MYVIMRC <cr>
nnoremap <leader>evv :vsplit $HOME/vimusrs/_vimcurrusr.vim <cr>
nnoremap <leader>sv  :source $MYVIMRC <cr>
nnoremap <leader>q   :copen<CR>
nnoremap <leader>qq  :cclose<CR>
nnoremap <leader>v   :execute "vimgrep /" . expand("<cword>") . "/gj " .expand("%") <CR>
nnoremap <leader>g   :execute "grep -nH " . expand("<cword>") . " " .expand("%") <CR>
nnoremap <C-Left>    :tabprevious<CR>
nnoremap <C-Right>   :tabnext<CR>
nnoremap <C-t>       a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
inoremap <C-t>       <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
nnoremap <C-Down>    :cnext<CR>
nnoremap <C-Up>      :cprevious<CR>
nnoremap _           5<C-w><<CR>
nnoremap +           5<C-w>><CR>
nnoremap -           5<C-w>-<CR>
nnoremap =           5<C-w>+<CR>
noremap  J           5j
vnoremap J           5j
noremap  K           5k
vnoremap K           5k
noremap  L           5l
vnoremap L           5l
noremap  H           5h
vnoremap H           5h
imap     jj          <Esc>:w<CR>
nnoremap B           ^
nnoremap E           $
nnoremap $           <nop>
nnoremap ^           <nop>
nnoremap gV          `[v`]
xmap     ga          <Plug>(EasyAlign)
nmap     ga          <Plug>(EasyAlign)
inoremap "           ""<left>
inoremap '           ''<left>
inoremap (           ()<left>
inoremap [           []<left>
inoremap {           {}<left>

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
