"Default Settings for Sirvimalot
"*For your own settings make changes to the _vimcustomrc.vim file
"GUI ==========================================================================

"Check if it is a terminal or GUI 
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

"Behavior ==========================================================================

"Press \ev to quick open vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr> 
nnoremap <leader>evv :vsplit $HOME/_vimcustomrc.vim<cr>

"Set autotoggling for the line numbers  1 l 
set number relativenumber 
:augroup numbertoggle 
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

"Ignore case when searching
set ignorecase 

"No wrapping 
set nowrap 

"Place all backup files in these special directories
set directory=$HOME/vimtemp/swapfiles// 
set backupdir=$HOME/vimtemp/backup//
set undodir=$HOME/vimtemp/undo//

"How to split
set splitbelow
set splitright

"Do not store global and local values in a session
set ssop-=options

"do not store folds
set ssop-=folds

"Show file options above command line 
set wildmenu

"Highlight when searchign 
set hlsearch

"Key Mappings==========================================================================

"Print location of current file
map <F2> :echo @%<CR>

"Time Stamp Quick Key
nmap <F8> a<C-R>=strftime("*%Y-%m-%d %a %I:%M %p* ")<CR>
imap <F8> <C-R>=strftime("*%Y-%m-%d %a %I:%M %p* ")<CR>

"Change split and vsplit sizes
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

"Togggle the NerdTree
map <F4> :NERDTreeToggle<CR>

"Find lines quickly in the current file
nnoremap <leader>ff :LeaderfLine<CR>

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
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
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

"Load Custom Vimrc==========================================================================
source $HOME/_vimcustomrc.vim
