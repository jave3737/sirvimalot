"edit config files
nnoremap <leader>ev     :vsplit $MYVIMRC <cr> 
nnoremap <leader>evv    :vsplit $HOME/vimusrs/_vimcurrusr.vim <cr>
nnoremap <leader>sv     :source $MYVIMRC <cr>
nnoremap <leader>eg     :vsplit $HOME/.gitconfig <cr>
nnoremap <leader>egg    :vsplit $HOME/.gitmodules <cr>
nnoremap <leader>eggg   :vsplit $HOME/.git/config <cr>
nnoremap <leader>en     :vsplit $HOME/.npmrc <cr>

"resize splits
nnoremap _ 5<C-w><<CR>
nnoremap + 5<C-w>><CR>
nnoremap - 5<C-w>-<CR>
nnoremap = 5<C-w>+<CR>

"nnoremap == :execute "set lines+=5"<CR>
"nnoremap == :execute "set lines-=5"<CR>

"move through tabs
nnoremap <C-Left>   :tabprevious<CR>
nnoremap <C-Right>  :tabnext<CR>

"print timestamp
nnoremap <C-t> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR> 
inoremap <C-t>  <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR> 

"open close quickfix menu
nnoremap <leader>q  :copen<CR>
nnoremap <leader>qq :cclose<CR>

"navigate quickfix results
nnoremap <C-Down>   :cnext<CR>
nnoremap <C-Up>     :cprevious<CR>

"find word under cursor in current file
nnoremap <leader>vl :execute "vimgrep /" . expand("<cword>") . "/gj " .expand("%") <CR>
nnoremap <leader>gl :execute "grep -nH " . expand("<cword>") . " " .expand("%") <CR>

"navigate around 5 times as fast
noremap  J 5j
vnoremap J 5j

noremap  K 5k
vnoremap K 5k

noremap  L 5l
vnoremap L 5l

noremap  H 5h
vnoremap H 5h

"faster way to escape from from insert mode
imap jj <Esc>

"remapping the go to end/beginning of line
nnoremap B ^
nnoremap E $

"removing functionality from these keys
nnoremap $ <nop>
nnoremap ^ <nop>

"highlight last inserted text
nnoremap gV `[v`]

"leader f
nnoremap <leader>fl :LeaderfLine<CR>
nnoremap <leader>fm :LeaderfMru<CR>

"easy align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

source $VIMRUNTIME/mswin.vim
behave mswin 

"maximize the gui at startup
au GUIEnter * simalt ~x

"default color scheme
colorscheme desert    

"set for externel 
set grepprg=grep\ 

"turn syntax n
syntax on

"default font
set guifont=Consolas:h8:cANSI

"enable autotoggling 
set number relativenumber 
:augroup numbertoggle 
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

"enable wild menu
set wildmenu

"enable vim to search recursively when using find
set path+=**

"remove all gui options
set guioptions =

"ignore case when searching
set ignorecase 

"disable wrapping
set nowrap 

"place swapfiles in specified directory
"set directory=$HOME/vimtemp/swapfiles// 
"set backupdir=$HOME/vimtemp/backup//
"set undodir=$HOME/vimtemp/undo//

"assuming we are version controlling through svn or git
set nobackup
set noswapfile
set noundofile

"split behavior
set splitbelow
set splitright

set sessionoptions-=options
set sessionoptions-=folds

"highlight when searching
set hlsearch

"output file name on statusline
set statusline=%t
set laststatus=2

"tab = 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set sessionoptions+=tabpages,globals
set nocompatible
set updatetime =100

"disable error sounds
set noerrorbells
set novisualbell
set belloff=all

"enable folding
"set foldmethod=indent
"set foldnestmax=10
"set foldenable

"set a cursorline 
"set cursorline 

"show matching
set showmatch
"
call pathogen#infect()
filetype plugin indent on
let g:UltiSnipsEditSplit          = 'vertical'
let g:UltiSnipsSnippetDirectories = [$HOME . "/vimfiles/custom_snippets"]
let g:UltiSnipsUsePythonVersion   = 3
let g:UltiSnipsExpandTrigger      = "<tab>"

source $HOME/vimusrs/_vimcurrusr.vim
