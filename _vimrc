"===============================================================================
"GETTING STARTED
"===============================================================================
"
"===============================================================================
"VARIABLES
"===============================================================================
"defining a scalar string variable
"let name = "Damian"

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
"===============================================================================
"FUNCTIONS
"===============================================================================
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
"===============================================================================
"KEY MAPPINGS
"===============================================================================
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
"===============================================================================
"TERMINAL OPTIONS
"===============================================================================
"show all terminal options
":set all
"
"set a vim terminal option
":set variable=expr "ex. :set tabstop=5
"
"open help for a terminal option
":help 'variable' "ex. :help 'tabstop' 
"
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
"===============================================================================
"SEARCH & REPLACE
"===============================================================================
"replace first occurance on a single line 
":s/search/replace
"
"replace all occurange on a single line
":s/search/replace/g
"
"replace all occurange on a single line w/ yes or no
":s/search/replace/gc
"
"replace all matching patterns in a file 
":%s/search/replace/g 
"
"replace all matching patterns in a file w/ yes or no 
":%s/search/replace/gc
"
"replace within a range "ex :8,10 s/hello/goodbye/g
":[range] s/search/replace/g 
"
"search for pattern in a file
"/pattern
"
"search for a pattern backwards in a file
"?pattern
"
"search for a pattern that at the beginning of a line
"/^pattern 
"
"search with case insensitive
"/pattern\c
"
"search with case sensitive
"/pattern\C
"
"search for next instance of pattern under cursor
"<Shift-*>
"
"search for previous instance of pattern under cursor
"<Shift-#>
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
"copy file contents to line 
":nr /path/to/file
"
"grep on windows 
"use the git grep by adding the grep.exe path to the $PATH environmmental
"variable. It may be in a directory like C:\Program Files\Git\usr\bin
"Or if you have cygwin installed it may be like C:\cygwin64\bin
"Just make sure that whatever directory you use it has the executable grep.exe
"Then set the following line in your vimrc
"set grepprg=grep\ 
"
"search for a pttern in the current file using grep
":grep 'pattern' %
"
"search for a pattern in a specified file using grep 
":grep 'pattern' path/to/file.txt
"
"fuzzy searching when set path+=** 
":find file.txt
"
"fuzzy file searching with wild card(hitting tab also does an autocomplete)
":find *part_of_file.txt
"
"fuzzy opening with buffer (allows vim to to open a buffer based on part of a
"name) 
":b part_of_file_name 
"===============================================================================
"COPY & PASTE
"===============================================================================
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
"cycle back through previous yanks
"<Alt-p>
"
"cycle forward through previous yanks
"<Alt-P>
"
"===============================================================================
"EDITING (CHANGE(c),YANK(y),DELETE(d))
"===============================================================================
"change to next word
"cw
"
"change entire line
"cc
"
"change from cursor to end of line
"C
"
"change from cursor to end of word
"ce
"
"change to end of line 
"c$
"
"change to inside matching quotes
"ci"
"
"change until next occurance of x
"cfx
"
"yank entire line
"yy
"
"yank from a line above without moving cursor
":-[number]y
"
"yank from a line below without moving cursor
":+[number]y
"
"===============================================================================
"NAVIGATING
"===============================================================================
"move up one line 
"k
"
"move down one line
"j
"
"move right 
"l
"
"move left 
"h
"
"move forward to start of next word
"w 
"
"backwards to previous start of word
"b
"
"forward to next end of word
"e
"
"jump to top of the file 
"gg
"
"jump to bottom of the file
"G
"
"move down half a page 
"<C-d>
"
"move up half a page
"<C-u>
"
"go forward by paragraph (next blank line)
"}
"
"go backward by paragraph (previous blank line) 
"{
"
"jump to line number "ex 330gg 
"[number]gg
"
"jump to line number 
":[number]
"
"forward to next occurance of [char]
"f[char] 
"
"backwards to previous occurance of [char]
"F[char]
"
"forward to the character before the next occurance of [char]
"t[char]
"
"backwards to the character before the next occuracnce of [char]
"T[char]
"
"repeat the last character search command 
";
"
"reverse the last character search command 
",
"
"jump to insert mode at the beginning of the line
"I
"
"jump to insert mode to the end of the line
"A
"
"open a fold
"zo
"
"close a fold 
"zc
"===============================================================================
"SAVING & EXITING
"===============================================================================
"save file 
":w
"
"quit tab/window 
":q 
"
"save and quit tab/window
":x
"===============================================================================
"ONLINE RESOURCES
"===============================================================================
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
"
"vimrc options
"https://dougblack.io/words/a-good-vimrc.html
"
"markdown 
"https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
"===============================================================================
"MARKDOWN
"===============================================================================
"headers
"# Header1 
"## Header2 
"### Header3
"#### Header4 
"##### Header5
"###### Header6
"
"text
"_text_ "text in italics
"**text** "text in bold
"**_text_** "text in bold and italics
"~~text~~ "text with strikethrough
"
"list
"* item1
"   - subitem1
"       * subsubitem1
"
"links
"[text](https://...) "text has embedded hyperlink
"<https://...>       "url
"
"blockquotes 
"> text
"
"horizontal rule
"--- 
"===============================================================================
"PLUGINS
"===============================================================================
call pathogen#infect()
filetype plugin indent on
let g:UltiSnipsEditSplit          = 'vertical'
let g:UltiSnipsSnippetDirectories = [$HOME . "/vimfiles/custom_snippets"]
let g:UltiSnipsUsePythonVersion   = 3
let g:UltiSnipsExpandTrigger      = "<tab>"
"===============================================================================
"LOAD CUSTOM VIMRC
"===============================================================================
source $HOME/vimusrs/_vimcurrusr.vim
