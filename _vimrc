"Default Settings for Sirvimalot
"IMPORTANT: DO NOT MODIFY THIS FILE
"
"reference ==========================================================================
"
"copy the contents from one file after the current location of the cursor
":r /path/to/file
"
"copy the contents from one file to another at a specified line (replace n w/
"line number
":nr /path/to/file
"
"find and replace w/yes or no
":%s/pattern_to_replace/pattern_to_insert/gc
"
"find and replace all instances
":%s/pattern_to_replace/pattern_to_insert/gi
"
"jump to next instance of a pattern under the cursor in normal mode
"<Shift> *
"
"jump to previous instance of a pattern under the cursor in normal mode
"<Shift> #
"
"rename tab name 
":tabooRename new_name_of_tab
"
"rename window name
":set titlestring = new_name_of_window
"
"example of defining a function & silently replaces an existing function with
"the same name. Remember must start with Uppercase
"function! Function_name(param_1, param_2)
"   let param_1 = 1   
"   let param_2 = 2
"   echo param_2
"   :perform_command
"endfunction
"
"calling a function
":call Function_name(param_1,param_2)
"
"reference a list of keymappings (Useful for redefining the key mappings)
":help keycodes
"
"to continue statement to the next line place a \ at new line
"call Function_name(
"\  param_1,
"\  param_2,
"\ )
"
"execute commands on more than one line using the |
"echo "hi" | echo "bye" | call Function_name()
"
"defining a scalar string variable
"let name = "Damian"
"
"defining a scalar number variable 
"let height = 1
"
"defining a list 
"let interests = [ 'Cinema', 'Literature', 'World Domination', 101 ]
"
"defining a dictionary (Can be a mix of scalars, strings, lists, etc)
"let phone     = { 'cell':5551017346, 'home':5558038728, 'work':'?' }
"
"Variable scopes
"g:varname "global variable
"s:varname "local variable to script
"w:varname "local to current editor window
"t:varname "local to current tab
"b:varname "local to current buffer
"l:varname "local to current function
"a:varname "parameter of current function
"v:varname "variable that vim predefines
"
"pseudovariables
"&varname "a vim option (local option if defined, otherwise global) 
"&l:varname "a local vim option
"&g:varname "a global vim option
"@varname "a vim register
"$varname "an environmental variable
"
"vimscript operator precedence
"let var=expr "assigning variable
"let var+=expr "numeric add and assign 
"let var-=expr "numeric subtract and assign 
"let var.=expr "string concatenate and assign 
"
"show all terminal options
":set all
"
"set a vim terminal option
":set variable=expr "ex. :set tabstop=5
"
"open help for a terminal option
":help 'variable' "ex. :help 'tabstop' 
"
"
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
:let g:gitgutter_enabled = 0

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
