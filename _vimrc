"Default Settings for Sirvimalot
"IMPORTANT: DO NOT MODIFY THIS FILE
"==========================================================================================
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
"   let str=a:param_1
"   echo param_2
"   :perform_command
"endfunction
"
"calling a function
":call Function_name(param_1,param_2)
"
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
"show all terminal options
":set all
"
"set a vim terminal option
":set variable=expr "ex. :set tabstop=5
"
"open help for a terminal option
":help 'variable' "ex. :help 'tabstop' 
"
"replace first occurance on a single line 
":s/search/replace
"
"replace all matching patterns in a file 
":%s/search/replace/g "the g at the end indicates global(all instances)
"
"replace all matching patterns in a file w/ yes or no 
":%s/search/replace/gc
"
"replace within a range (*You can also use visual mode to highlight and then
"enter the command mode)
":[range] s/search/replace/g "ex :8,10 s/hello/goodbye/g
"
"search a file
"/pattern
"
"search backwards
"?pattern
"
"search a match at the beginning of the line
"/^pattern "ex /^"open
"
"search in case insensitive 
"/pattern\c
"
"search in case sensitive
"/pattern\C
"
"search for next instance of pattern under cursor
"<S-*>
"
"search for previous instance of pattern under cursor
"<S-#>
"
"search for a pattern within a file using vimgrep case insensitive
":vimgrep /pattern\c/gj path\to\file.txt
"
"search for a pattern within a file using vimgrep case sensitive
":vimgrep /pattern\C/gj path\to\file.txt
"
"search for a pattern recursively in a directory
"** indicates search directory 
":vimgrep /pattern/gj path\to\directory\**
"
"search for a pattern recusively in a directory with specific file type
":vimgrep /pattern/gj path\to\directory\**\*.txt
"
"open quicklist to display results from vimgrep
":copen 
"
"close quicklist from vimgrep 
":close
"
"copy file contents to cursor location
":r /path/to/file
"
"copy file contents to line "replace n with line number 
":nr /path/to/file
"
"copy a single line to clipboard in normal mode
"QC
"
"copy a selected text to cliboard in visual mode
"QC
"
"paste from cliboard in normal mode
"QV
"
"Getting grep to work in windows
"If you have git installed you can add the git grep to the $PATH 
"C:\Program Files\Git\usr\bin
"And set the following variable 
"set grepprg=grep\ -nH
"==========================================================================================
"fonts
"https://medium.com/@caulfieldOwen/programming-fonts-a-visual-guide-567fc210d2c6
"
"search and replace
"https://www.linux.com/learn/vim-tips-basics-search-and-replace
"
"doxygen tags
"http://www.doxygen.nl/manual/commands.html
"
"searching using grep and vimgrep
"https://seesparkbox.com/foundry/demystifying_multi_file_searches_in_vim_and_the_command_line
"==========================================================================================

source $VIMRUNTIME/mswin.vim
behave mswin 
set guifont=Consolas:h14:cANSI, 
au GUIEnter * simalt ~x
colorscheme desert    

set number relativenumber 
:augroup numbertoggle 
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

set wildmenu
set guioptions =
set ignorecase 
set nowrap 
set directory=$HOME/vimtemp/swapfiles// 
set backupdir=$HOME/vimtemp/backup//
set undodir=$HOME/vimtemp/undo//
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
set updatetime =100
set grepprg=grep\ -nH
syntax on
"key mappings==========================================================================
nnoremap <leader>ev :vsplit $MYVIMRC <cr> :split $HOME/_vimcustomrc.vim <cr>
nnoremap <leader>evv :tabnew $MYVIMRC <cr> :split $HOME/_vimcustomrc.vim <cr>
nnoremap _ 10<C-w><<CR>
nnoremap + 10<C-w>><CR>
nnoremap - 10<C-w>-<CR>
nnoremap = 10<C-w>+<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <leader>fl :LeaderfLine<CR>
nnoremap <leader>fm :LeaderfMru<CR>
nnoremap <leader>n  :NERDTreeToggle<CR>
nnoremap <C-t> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR> 
inoremap <C-t>  <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR> 
nnoremap <leader>q :copen<CR>
nnoremap <leader>qq :cclose<CR>
nnoremap <C-Up> :cnext<CR>
nnoremap <C-Down> :cprevious<CR>
nnoremap <leader>vl :execute "vimgrep /" . expand("<cword>") . "/gj " .expand("%") <Bar> cw<CR>
"plugin settings==========================================================================
call pathogen#infect()
filetype plugin indent on
let g:gitgutter_enabled = 0
let g:vimwiki_list = [{'path':'~/vimwiki','path_html':'~/vimwiki/html/'}]
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsSnippetDirectories=[$HOME . "/vimfiles/custom_snippets"]
let g:UltiSnipsUsePythonVersion=3
let g:UltiSnipsExpandTrigger="<tab>"
"load custom vimrc==========================================================================
source $HOME/_vimcustomrc.vim
