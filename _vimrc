"Default Settings for Sirvimalot
"IMPORTANT: DO NOT MODIFY THIS FILE
"
"Reference ==========================================================================
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
"keymappings ==========================================================================
"open help for keymappings
":help key-mapping
"
"reference a list of keymappings (Useful for redefining the key mappings)
":help keycodes
"
"display all the current mappings 
":map
"
"display all the current mappings with verbose information 
":verbose map
"
"display normal mode mappings
":nmap 
"
"display insert mode mappings
":imap 
"
"display visual mode mappings
":vmap
"
"Terminal options ==========================================================================
"show all terminal options
":set all
"
"set a vim terminal option
":set variable=expr "ex. :set tabstop=5
"
"open help for a terminal option
":help 'variable' "ex. :help 'tabstop' 
"==========================================================================================
"==========================================================================================

if has("gui_running")

    if has("gui_gtk2") || has("gui_gtk3")

    elseif has("gui_win32") 

        source $VIMRUNTIME/mswin.vim
        behave mswin 
        set guifont=Consolas:h11:cANSI, 
    elseif has("gui_macvim")

    else
        echo "Unknown Gui System" 
    endif 

    set guioptions =
    
else
endif 

colorscheme desert    

"press \ev to quickly open default and custom settings
nnoremap <leader>ev :vsplit $MYVIMRC <cr> :split $HOME/_vimcustomrc.vim <cr>
nnoremap <leader>evv :tabnew $MYVIMRC <cr> :split $HOME/_vimcustomrc.vim <cr>

set number relativenumber 
:augroup numbertoggle 
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

set ignorecase 
set nowrap 
set directory=$HOME/vimtemp/swapfiles// 
set backupdir=$HOME/vimtemp/backup//
set undodir=$HOME/vimtemp/undo//
set splitbelow
set splitright
set ssop-=options
set ssop-=folds
set hlsearch
set statusline=%t

"key mappings==========================================================================
nnoremap _ 10<C-w><<CR>
nnoremap + 10<C-w>><CR>
nnoremap - 10<C-w>-<CR>
nnoremap = 10<C-w>+<CR>
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

"ultisnips
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsSnippetDirectories=[$HOME . "/vimfiles/custom_snippets"]
let g:UltiSnipsUsePythonVersion=3
let g:UltiSnipsExpandTrigger="<tab>"


"leaderF
nnoremap <leader>ff :LeaderfLine<CR>

"load custom vimrc==========================================================================
source $HOME/_vimcustomrc.vim
