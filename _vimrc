source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
"Getting Started ==========================================================================
"* Make an environmental variable called HOME that points to the directory
"   that you will use for placing the _vimrc and vimfiles directory 
"* 

"Appearance ==========================================================================
if has("gui_running")
    autocmd GUIEnter * simalt ~x "Maximize Gui Size

    "Setting the colorscheme
    colorscheme vividchalk

    "Setting the system font
    "set guifont=Dank_Mono:h12:cANSI:qDRAFT "Set Guifont in regular
    set guifont=Dank_Mono:h14:cANSI:qDRAFT "Set Guifont in bold
endif 

"Remove the menu bar 
set guioptions -=m 

"Remove the toolbar 
set guioptions -=T

"Remove the right scrollbar
set guioptions -=r

"Remove the left scrollbar
set guioptions -=l

"Show the name of the file in the statusline
set statusline=%t
"Behavior ==========================================================================
"Press \ev to quick open vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr> 

"Set autotoggling for the line numbers 
set number relativenumber 
:augroup numbertoggle 
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

"Set tab to 4 spaces
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set expandtab

"Set line numbers to 0 characters
set textwidth=0 

"Ignore case when searching
set ignorecase 

"No wrapping 
set nowrap 

"Place all backup files in these special directories
set directory=$HOME/vimother/swapfiles// 
set backupdir=$HOME/vimother/backup//
set undodir=$HOME/vimother/undo//

"How to split
set splitbelow
set splitright

"Do not store global and local values in a session
set ssop-=options

"do not store folds
set ssop-=folds

"Key Mappings==========================================================================
"Change to home directory
map <F1> :cd $HOME<CR>

"Print location of current file
map <F2> :echo @%<CR>

"Toggle Syntastic Checking
map <F3> :SyntasticToggleMode<CR>

"Load the vimwiki session
map <F4> :call LoadVimWikiSession()<CR>

"Find lines quickly in the current file
map <F5> :LeaderfFile<CR>
map <C-F5> :LeaderfLine<CR>

map <F6> :split<CR>
map <C-F6> :vsplit<CR>
"Time Stamp Quick Key
nmap <F8> gg<CR>i<CR><C-R>=strftime("* *%Y-%m-%d %a %I:%M %p* ")<CR>
nmap <C-F8> a<C-R>=strftime("*%Y-%m-%d %a %I:%M %p* ")<CR>
imap <C-F8> a<C-R>=strftime("*%Y-%m-%d %a %I:%M %p* ")<CR>

"Change vsplit size
nnoremap _ 10<C-w><<CR>
nnoremap + 10<C-w>><CR>
nnoremap - 10<C-w>-<CR>
nnoremap = 10<C-w>+<CR>

"Easy navigating through windows
"NOTE:There is an issue with this and c-support so getting rid of it for now
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

"Use the arrow keys to easily move tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

"Plugin Settings==========================================================================
"Pathogen
call pathogen#infect()

"GitGutter
set updatetime =100
:let g:gitgutter_enabled = 1

"Vimwiki
set nocompatible
filetype plugin on
syntax on
let g:vimwiki_list = [{'path':'~/vimwiki','path_html':'~/vimwiki/html/'}]
fu! LoadVimWikiSession()
    :source ~/vimfiles/sessions/vimwiki_session.vim
    :set titlestring=VimWiki
endfunction

"Taboo
set sessionoptions+=tabpages,globals

"syntastic
"Disabling some of the default statusline messages
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"Telling Syntastic that we want to run passive at default and c files as
"passive checking
let g:syntastic_mode_map = {
    \ "mode": "passive", 
    \ "active_filetypes": [],
    \ "passive_filetypes": ["c"] }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_checkers=["gcc"] 
let g:syntastic_c_config_file = '.syntastic_c_config_file' 
let g:syntastic_c_check_header = 1 
"Example of how to quiet down syntastic based on certain warmings or messages
"let g:syntastic_quiet_messages={'regex':'unknown type'}
"
