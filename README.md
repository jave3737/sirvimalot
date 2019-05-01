# Getting Started
This READ ME has information for all the components needed to recreate this Vim setup. 

## 1. Important Paths
|                     | Windows 	    | Linux 	|
|---------------------|---------------|---------|
| vim config file  	  | \_vimrc       | .vimrc  |
| vim top file dir	  | vimfiles      | .vim	  |

### Windows 
+ The git repo will add the `_vimrc` file and `vimfiles` directory to your `C:Users\<me>\` folder.  
+ Add an environmental variable `$HOME` with path of the directory that you will refer to as your HOME directory. *Your `$HOME` directory is the one that vim opens to* 
+ Navigate to `C:Users\<me>\` folder and run the commands in [git section]((https://github.com/jave3737/sirvimalot#Git-commands-for-sirvimalot-repo))

## 2. Git Commands for sirvimalot repo
```@console
git init
git remote add origin https://github.com/jave3737/sirvimalot.git
git fetch
git checkout -t origin/master
git submodule init 
git submodule update
```
## 3. Python 3.6.0 (32-bit version) 
* __NOTE__ Even if you have a Python distro for 64-bit machines, you still need to download 32-bit Python if you want the `Leader F` package to run correctly. 
* . First type `:version` in Gvim and you should see `-DDYNAMIC_PYTHON3_DLL=\"python35.dll\`. *This indicates the version of python you will need to download, I will typically go with the 32 bit version of python3.x.0*
* You need to add the path to the `python35.dll` to the `$PATH` environmental variable. This might be in a directory like `'C:\Users\Jave\AppData\Local\Programs\Python\Python35-32'`
* __NOTE__: Before running the installer be sure to check off the __add to path__ checkbox, otherwise you'll have to add it manually (womp womp)

# Adding plugins to the repository 
* Using gitBash or CommandExe go to `$HOME/vimfiles/bundle` and add the submodule as `git submodule add </link/to/REPO>`
* Commit the changes `git commit -m <submodule> -a` and `git push` 
* Run `git submodule update`

# reference
## variables
* defining a scalar string variable
> let name = "Damian"
* defining a scalar number variable 
> let height = 1
* defining a list 
> let interests = [ 'Cinema', 'Literature', 'World Domination', 101 ]
* defining a dictionary (Can be a mix of scalars, strings, lists, etc)
> let phone     = { 'cell':5551017346, 'home':5558038728, 'work':'?' }
* global variables 
> g:varname 
* local variable to script
> s:varname 
* local to current editor window
> w:varname 
* local to current tab
> t:varname 
* local to current buffer
> b:varname 
* local to current function
> l:varname 
* parameter of current function
> a:varname 
* variable that vim predefines
> v:varname 
* a vim option (local option if defined, otherwise global) 
> &varname 
* a local vim option
> &l:varname 
* a global vim option
> &g:varname 
* a vim register
> @varname 
* an environmental variable
> $varname 
* assigning variable
> let var=expr 
* numeric add and assign 
> let var+=expr 
* numeric subtract and assign 
> let var-=expr 
* string concatenate and assign 
> let var.=expr 
## functions
* example of defining a function & silently replaces an existing function with the same name
* functions must start with an uppercase letter
> function! Function_name(param_1, param_2)
>    let param_1 = 1   
>    let param_2 = 2
>    let str=a:param_1
>    echo param_2
>    :perform_command
> endfunction
* calling a function
> :call Function_name(param_1,param_2)
## key mappings
* open help for keymappings
> :help key-mapping
* reference a list of keymappings (Useful for redefining the key mappings)
> :help keycodes
* display all the current mappings 
> :map
* display all the current mappings with verbose information 
> :verbose map
* display normal mode mappings
> :nmap 
* display insert mode mappings
> :imap 
* display visual mode mappings
> :vmap
## terminal options
* show all terminal options
> :set all
* set a vim terminal option
> :set variable=expr "ex. :set tabstop=5
* open help for a terminal option
> :help 'variable' "ex. :help 'tabstop' 
## search and replace
* replace first occurance on a single line 
> :s/search/replace
* replace all occurange on a single line
> :s/search/replace/g
* replace all occurange on a single line w/ yes or no
> :s/search/replace/gc
* replace all matching patterns in a file 
> :%s/search/replace/g 
* replace all matching patterns in a file w/ yes or no 
> :%s/search/replace/gc
* replace within a range "ex :8,10 s/hello/goodbye/g
> :[range] s/search/replace/g 
* search for pattern in a file
> /pattern
* search for a pattern backwards in a file
> ?pattern
* search for a pattern that at the beginning of a line
> /^pattern 
* search with case insensitive
> /pattern\c
* search with case sensitive
> /pattern\C
* search for next instance of pattern under cursor
> <S-*>
* search for previous instance of pattern under cursor
> <S-#>
* search for a pattern within a file using vimgrep case insensitive
> :vimgrep /pattern\c/gj path\to\file.txt
* search for a pattern within a file using vimgrep case sensitive
> :vimgrep /pattern\C/gj path\to\file.txt
* search for a pattern recursively in a directory
>  :vimgrep /pattern/gj path\to\directory\**
* search for a pattern recusively in a directory with specific file type
> :vimgrep /pattern/gj path\to\directory\**\*.txt
* open quicklist to display results from vimgrep
> :copen 
* close quicklist from vimgrep 
> :close
* copy file contents to cursor location
> :r /path/to/file
* copy file contents to line 
> :nr /path/to/file
* search for a pttern in the current file using grep
> :grep 'pattern' %
* search for a pattern in a specified file using grep 
> :grep 'pattern' path/to/file.txt
* fuzzy searching when set path+=** 
> :find file.txt
* fuzzy file searching with wild card(hitting tab also does an autocomplete)
> :find *part_of_file.txt
* fuzzy opening with buffer (allows vim to to open a buffer based on part of a name) 
> :b part_of_file_name 
## copy & paste
* copy a single line to clipboard in normal mode
> QC
* copy a selected text to cliboard in visual mode
> QC
* paste from cliboard in normal mode
> QV
* cycle back through previous yanks
> <Alt-p>
* cycle forward through previous yanks
> <Alt-P>
## editing (change, delete, yank)
*change to next word
> cw
* change entire line
> cc
* change from cursor to end of line
> C
* change from cursor to end of word
> ce
* change to end of line 
> c$
* change to inside matching quotes
> ci"
* change until next occurance of x
> cfx
* yank entire line
> yy
* yank from a line above without moving cursor
> :-[number]y
* yank from a line below without moving cursor
> :+[number]y
## navigating
* move up one line 
> k
* move down one line
> j
* move right 
> l
* move left 
> h
* move forward to start of next word
> w 
* backwards to previous start of word
> b
* forward to next end of word
> e
* jump to top of the file 
> gg
* jump to bottom of the file
> G
* move down half a page 
> <C-d>
* move up half a page
> <C-u>
* go forward by paragraph (next blank line)
> }
* go backward by paragraph (previous blank line) 
> {
* jump to line number "ex 330gg 
> [number]gg
* jump to line number 
> :[number]
* forward to next occurance of [char]
> f[char] 
* backwards to previous occurance of [char]
> F[char]
* forward to the character before the next occurance of [char]
> t[char]
* backwards to the character before the next occuracnce of [char]
> T[char]
* repeat the last character search command 
> ;
* reverse the last character search command 
> ,
* jump to insert mode at the beginning of the line
> I
* jump to insert mode to the end of the line
> A
* open a fold
> zo
* close a fold 
> zc
## saving and exiting 
* save file 
> :w
* quit tab/window 
> :q 
* save and quit tab/window
> :x
