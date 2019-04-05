"Getting Started ==========================================================================
" * Set an environmental variable for your $HOME directory
" * If on windows make a _vimrc in the $HOME directory 
" * If on linux make a .vimrc in the $HOME directory
" * If placing in a non-gui environment comment everything below
" plugin-key-mappings
" * 
"
"Appearance ==========================================================================
if has("gui_running")
    autocmd GUIEnter * simalt ~x "Maximize Gui Size

    "Setting the colorscheme
    colorscheme vividchalk

    "Setting the system font
    "set guifont=Dank_Mono:h12:cANSI:qDRAFT "Set Guifont in regular
    set guifont=Dank_Mono:h12:cANSI:qDRAFT "Set Guifont in bold

    "Remove toolbar, menu bar, scrollbars, etc 
    set guioptions =
else
    colorscheme desert
endif 

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

"Time Stamp Quick Key
nmap <F8> gg<CR>i<CR><C-R>=strftime("* *%Y-%m-%d %a %I:%M %p* ")<CR>
nmap <C-F8> a<C-R>=strftime("*%Y-%m-%d %a %I:%M %p* ")<CR>
imap <C-F8> <C-R>=strftime("*%Y-%m-%d %a %I:%M %p* ")<CR>

"Change vsplit size
nnoremap _ 10<C-w><<CR>
nnoremap + 10<C-w>><CR>
nnoremap - 10<C-w>-<CR>
nnoremap = 10<C-w>+<CR>

"Use the arrow keys to easily move tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

"Plugin Settings==========================================================================
"Toggle Syntastic Checking
map <F3> :SyntasticToggleMode<CR>

"Find lines quickly in the current file
map <F5> :LeaderfFile<CR>
map <C-F5> :LeaderfLine<CR>

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
