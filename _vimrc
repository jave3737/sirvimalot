"Default Settings for Sirvimalot
"*For your own settings make changes to the _vimcustomrc.vim file
"GUI ==========================================================================

"check if it is a terminal or GUI 
if has("gui_running")

    "Linux
    if has("gui_gtk2") || has("gui_gtk3")

    "Windows 
    elseif has("gui_win32") 

        "Load some windows behavior stuff
        source $VIMRUNTIME/mswin.vim
        behave mswin 

        "Maximize GUI
        autocmd GUIEnter * simalt ~x "Maximize Gui Size

        "Setting the potential fonts
        set guifont=Consolas:h11:cANSI, 

    "MAC
    elseif has("gui_macvim")
    else
        echo "Unknown Gui System" 
    endif 

    "Remove toolbar, menu bar, scrollbars, etc 
    set guioptions =
    
else

endif 

"Use desert as default colorscheme
colorscheme desert    

"Show the name of the file in the statusline
set statusline=%t

"behavior ==========================================================================

"press \ev to quickly open default and custom settings
nnoremap <leader>ev :vsplit $MYVIMRC <cr> :split $HOME/_vimcustomrc.vim <cr>

"set autotoggling for the line numbers
set number relativenumber 
:augroup numbertoggle 
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

"ignore case when searching
set ignorecase 

"no wrapping 
set nowrap 

"place all backup files in these special directories
set directory=$HOME/vimtemp/swapfiles// 
set backupdir=$HOME/vimtemp/backup//
set undodir=$HOME/vimtemp/undo//

"how to split
set splitbelow
set splitright

"do not store global and local values in a session
set ssop-=options

"do not store folds
set ssop-=folds

"show file options above command line 
set wildmenu

"highlight when searching
set hlsearch

"key mappings==========================================================================

"time stamp quick key
nmap <F8> a<C-R>=strftime("*%Y-%m-%d %a %I:%M %p* ")<CR>
imap <F8> <C-R>=strftime("*%Y-%m-%d %a %I:%M %p* ")<CR>

"change split and vsplit sizes
nnoremap _ 10<C-w><<CR>
nnoremap + 10<C-w>><CR>
nnoremap - 10<C-w>-<CR>
nnoremap = 10<C-w>+<CR>

"use the arrow keys to easily move tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

"plugin settings==========================================================================

filetype plugin indent on

"pathogen
call pathogen#infect()

"gitgutter
set updatetime =100
:let g:gitgutter_enabled = 1

"vimwiki
set nocompatible
syntax on
let g:vimwiki_list = [{'path':'~/vimwiki','path_html':'~/vimwiki/html/'}]

"taboo
set sessionoptions+=tabpages,globals

"syntastic
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
map <F3> :SyntasticToggleMode<CR>

"ultisnips
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsSnippetDirectories=[$HOME . "/vimfiles/custom_snippets"]
let g:UltiSnipsUsePythonVersion=3
let g:UltiSnipsExpandTrigger="<tab>"

"leaderF
nnoremap <leader>ff :LeaderfLine<CR>

"nerdtree
map <F4> :NERDTreeToggle<CR>

"load custom vimrc==========================================================================

source $HOME/_vimcustomrc.vim
