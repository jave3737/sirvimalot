# installation
* download [gVim v8.0](https://www.vim.org/download.php)
    * add an environmental variable `$HOME` with path of the directory that you will refer to as your HOME directory.
* download and install 32-bit version of [Python 3.6.0](https://www.python.org/downloads/release/python-360/)
    * or whatever version of python is required by gVim. If you type `:version` you should see something along the lines of `--DDYNAMIC_PYTHON3_DLL="\python36.dll\"` so you will need that version of python
    * when installing make sure to "Add to Path" or you will have to manually
      add the path of the executable to the environmental variable "path"
* download the latest windows binary version for ripgrep
  [here](https://github.com/BurntSushi/ripgrep/releases)
    * extract the folder 
    * make a new folder in the C: drive, call it 'executables' 
    * add the rg.exe to the 'executables' folder
    * edit your $PATH environmental variable to include the 'executables'
      directory
    * open the command prompt and type `rg --help` to make sure it is working
* download the cygwin setup [here](https://www.cygwin.com/)
    * search for `ctags` 
    * install ctags 
    * edit your $PATH environmental variable to include the directory where all
      the cygwin .bin files are 
    * open the command prompt and type `ctags` to make sure that it is properly
      installed 
* i recommend dank mono as an appropriate programming font, you can purchase it
  [here](https://dank.sh/)

## clone the repository
* change to your $HOME directory and run the following git commands
```@console
git init
git remote add origin https://github.com/jave3737/sirvimalot.git
git fetch
git checkout -t origin/master
git submodule init 
git submodule update
```

# recommended plugins
| type        | plugin                                                                                     |
| ----        | ----                                                                                       |
| aesthetics  | [goyo](https://github.com/junegunn/goyo.vim)                                               |
| aesthetics  | [indentLine](https://github.com/Yggdroot/indentLine)                                       |
| aesthetics  | [lightline](https://github.com/itchyny/lightline.vim)                                      |
| aesthetics  | [xterm-color-table](https://github.com/guns/xterm-color-table.vim)                         |
| colorscheme | [256noir](https://github.com/andreasvc/vim-256noir.git)                                    |
| completion  | [jedi-vim](https://github.com/davidhalter/jedi-vim)                                        |
| completion  | [supertab](https://github.com/ervandrew/supertab)                                          |
| completion  | [ultisnips](https://github.com/sirver/UltiSnips)                                           |
| editing     | [YankStack](https://github.com/maxbrunsfeld/vim-yankstack)                                 |
| editing     | [copy-cut-paste](https://github.com/NLKNguyen/copy-cut-paste.vim)                          |
| editing     | [nerdcommenter](https://github.com/scrooloose/nerdcommenter)                               |
| editing     | [vim-easy-align](https://github.com/junegunn/vim-easy-align)                               |
| editing     | [vim-surround](https://github.com/tpope/vim-surround)                                      |
| git         | [gv](https://github.com/junegunn/gv.vim)                                                   |
| git         | [vim-fugitive](https://github.com/tpope/vim-fugitive)                                      |
| git         | [vim-gitgutter](https://github.com/airblade/vim-gitgutter)                                 |
| interface   | [taboo](https://github.com/gcmt/taboo.vim)                                                 |
| navigation  | [golden-ratio](https://github.com/roman/golden-ratio)                                      |
| navigation  | [gutentags](https://github.com/ludovicchabant/vim-gutentags/blob/master/doc/gutentags.txt) |
| navigation  | [leaderf](https://github.com/Yggdroot/LeaderF)                                             |
| navigation  | [nerdtree](https://github.com/scrooloose/nerdtree)                                         |
| navigation  | [quick-scope](https://github.com/unblevable/quick-scope)                                   |
| navigation  | [tagbar](https://github.com/majutsushi/tagbar/blob/master/doc/tagbar.txt)                  |
| syntax      | [syntaxattr](https://github.com/vim-scripts/SyntaxAttr.vim.git)                            |
| utility     | [vim-peekaboo](https://github.com/junegunn/vim-peekaboo)                                   |
| utility     | [vimCalc3](https://github.com/fedorenchik/VimCalc3)                                        |

# cheatsheet
| type                     | related plugin | command                             | variant                         | description                                                                                                                                                   |
| ----                     | ----           | ----                                | ----                            | ----                                                                                                                                                          |
| aesthetics               |                | :set guifont=\*                     |                                 | change font when using gui vim                                                                                                                                |
| commandline              |                | \<C-D\>                             |                                 | when typing a command this will list all possible options                                                                                                     |
| commandline              |                | \<C-R\>"                            |                                 | paste a yanked line into the commandline                                                                                                                      |
| commandline              |                | q:                                  |                                 | show the commandline history                                                                                                                                  |
| configuration            |                | :set                                |                                 | list all the settings currently configured                                                                                                                    |
| editing                  |                | :digraphs                           |                                 | shows the possible digraphs you could use in utf-8                                                                                                            |
| editing                  |                | :g/^$/d                             |                                 | delete all blank lines                                                                                                                                        |
| editing                  |                | :g/pattern/s/old/new/g              |                                 | apply a substition to only lines that match pattern                                                                                                           |
| editing                  |                | :n,md                               |                                 | delete lines within range n,m                                                                                                                                 |
| editing                  |                | :n,ms/^.\{x\}//                     |                                 | within lines n,m remove x number of char from the begginning of each line                                                                                     |
| editing                  |                | :n,ms/^/char                        |                                 | within lines n,m add char to the beggining of each line                                                                                                       |
| editing                  |                | :n,msort                            | \<visual\>sort                  | within lines n,m sort the lines in alphabetical order                                                                                                         |
| editing                  |                | :s/\\/\//g                          |                                 | swap all the \\ to \/ on the current line                                                                                                                     |
| editing                  |                | :v/pattern/s/old/new/g              |                                 | apply a substition to only lines that do not match pattern                                                                                                    |
| editing                  |                | \<insert\>\<C-K\>                   |                                 | insert a digraph                                                                                                                                              |
| editing                  |                | \<insert\>\<C-U\>                   | \<insert\>\<C-W\>               | delete the (current line/up to previous word)                                                                                                                 |
| editing                  |                | gUU                                 | guu                             | change all letters on line to (uppercase/lowercase)                                                                                                           |
| editing                  | nerdcomplete   | \<leader\>cA                        |                                 | go the end of the line and append a comment                                                                                                                   |
| editing                  | nerdcomplete   | \<leader\>cc                        |                                 | comment the current line                                                                                                                                      |
| editing, autocompletion  |                | \<insert\>\<C-P\>                   | \<insert\>\<C-N\>               | cycle through keyword completion to (previous/next) matches                                                                                                   |
| editing, autocompletion  |                | \<insert\>\<C-X\>\<C-L\>\<C-P\>     | \<insert\>\<C-X\>\<C-L\>\<C-N\> | cycle through full line completion to (previous/next) matches                                                                                                 |
| editing, completion      |                | \<insert\>\<C-P\>\<C-Y\>            | \<insert\>\<C-P\>\<C-N\>        | after cycling through completion options (accept/deny) current completion                                                                                     |
| editing, formatting      |                | gqq                                 | \<visual\>gq                    | reformat a (line/visual block) to adhere to the proper number of characters to a line                                                                         |
| editing, omnicompletion  |                | \<insert\>\<C-X\>\<C-O\>\<C-P\>     | \<insert\>\<C-X\>\<C-O\>\<C-N\> | cycle through omnicompletion to (previous/next) matches                                                                                                       |
| git                      | gitgutter      | \<leader\>hs                        | \<leader\>hu                    | (stage/unstage) the hunk where the cursor is                                                                                                                  |
| navigation               |                | \%                                  | v\%                             | (jump/highlight) to matching bracket                                                                                                                          |
| navigation,              | gitgutter      | [c                                  | ]c                              | jump to (previously/next) edited hunk of code                                                                                                                 |
| navigation, buffer       |                | :b#                                 |                                 | switch to the previous buffer last edited in                                                                                                                  |
| navigation, declarations |                | gD                                  | gd                              | goto (global/local) declaration of the identifier under the cursor                                                                                            |
| navigation, explore      |                | :Explore                            | :Sexplore, :Vexplore            | Explore the filesystem in (full/split/vertical) windows                                                                                                       |
| navigation, scrolling    |                | \<C-D\>                             | \<C-U\>                         | move the screen (forward/backward) half a page                                                                                                                |
| navigation, scrolling    |                | \<C-E\>                             | \<C-Y\>                         | keep the cursor in the same location while scrolling the screen (upwards/downwards)                                                                           |
| navigation, scrolling    |                | \<C-F\>                             | \<C-B\>                         | move the screen (forward/backward) one whole page                                                                                                             |
| navigation, scrolling    |                | zh                                  | zl                              | keep the cursor in the same location while scrolling the screen to the (right/left)                                                                           |
| registers                |                | "Kyy                                |                                 | append to register k                                                                                                                                          |
| registers                |                | "\*p                                | "\*yy                           | (paste/copy) (from/to) clipboard register                                                                                                                     |
| registers                |                | "kp                                 | "kyy                            | (paste/copy current line) (from/to) register k                                                                                                                |
| registers                |                | :reg                                |                                 | to access all currently defined registers                                                                                                                     |
| searching                |                | g/pattern/next\_command             | v/pattern/next\_command         | show a list of all (matching/non-matching) patterns, you can then chain them to isolate even further or run a command right after(i.e g/pattern/g/subpattern) |
| searching, ctags         |                | :pclose                             |                                 | close the preview window                                                                                                                                      |
| searching, ctags         |                | :tags tag\_name                     |                                 | search for the specified tag                                                                                                                                  |
| searching, ctags         |                | :tselect tag\_name                  |                                 | search for the specified tag and show a selectable list for jumping. Good when there are many functions/variables with the same name                          |
| searching, ctags         |                | \<C-W\>}                            |                                 | show the tag under the cursor in a preview window                                                                                                             |
| searching, grep          |                | :grep -rin --include \*.c pattern . | :grep -in \%                    | search for the pattern recursively in the current directory, search for the pattern in the current file                                                       |
| searching, ripgrep       |                | :!rg --vimgrep --type="c" pattern   | :!rg --vimgrep pattern %        | only search for pattern in c-related files (reculsively/current file)                                                                                         |
| utility                  |                | g\<C-G\>                            |                                 | show current file name (with path) and cursor position                                                                                                        |
| utility                  |                | ga                                  |                                 | show ascii value of character under cursor in decimal, hex, and octal                                                                                         |

# frequently asked questions

## i need to compile vim from the source code on my linux machine
* download the vim source [here](https://github.com/vim/vim)
* there is a `compile_vim.sh` script that I wrote up that is pretty useful 
```
unzip vim-master.zip
cd vim-master 
cp $HOME/vimrc_examples/compile_vim.sh .
chmod 777 compile_vim.sh
./compile_vim.sh
```
* you should ensure that `$HOME/bin` is a valid path 
* if you are having problems opening the right vim you can try to add the following alias to your vimrc
```
alias vim='~/bin/vim'
```

## my terminal isnt showing vim colorscheme correctly
* try to add the following line to your .bashrc
```
export TERM=xterm-256color
```

## how do I make my own colorscheme or edited one
* use some of the following handly commands to get the information you need
| command            | description                                                    |
| ----               | ----                                                           |
| :highlight         | list of highlight groups                                       |
| :help highlight    | for extensive information                                      |
| :xTermColorTable   | color reference                                                |
| :call SyntaxAttr() | get information on the syntax group the cursor is currently on |
* use the following snippet to create a colorscheme
```vimscript
set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="colorscheme_base"
highlight Normal gui=NONE guibg=#000000 guifg=#ffffff
```

## how do I install python3.6 packages that might be used by certain vim plugins
* downloading python should also install pip3.6 
* `pip3.6 --proxy https://username:password@address.com:port install <python_package>`

## how do I make a keymapping to execute a command using the word under the cursor
* the following command is an example that forms a grep command and expands just word under the cursor
```vimscript
    nnoremap <leader>g :execute(":grep! -rin --include \*.h --include \*.c " .  expand('<cword>') . " .")<CR>
```
* the following command is an example that forms a grep command and expands a full WORD under the cursor
```vimscript
    nnoremap <leader>gg :execute(":grep! -rin --include \*.h --include \*.c " .  expand('<cWORD>') . " .")<CR>
```

## how do i set a global variable for a plugin  
* lots of plugins use global variables that are set in your .vimrc file. they are set like somehting like this
```vimscript
let g:plugin_global_variable = 1
```
* they can either be a number or a set of strings, you will have to refer to the plugins documentation

## web references
| site                                                                                                               | description |
| ----                                                                                                               | ----        |
| [Making Vim Pretty With Custom Colors](https://andrewradev.com/2011/08/06/making-vim-pretty-with-custom-colors/)   |             |
| [The Power of G](https://vim.fandom.com/wiki/Power_of_g)                                                           |             |
| [Installing Ctags](https://superuser.com/questions/66367/is-it-possible-to-install-ctags-without-root-privs#66370) |             |
