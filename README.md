# description
This repository provides a complete development environment using Vim. Also provides a rudimentary method for managing various users using the same vim configuration while allowing for custom configurations.

# installation
* Download [gVim v8.0](https://www.vim.org/download.php)
    * Add an environmental variable `$HOME` with path of the directory that you will refer to as your HOME directory.
* Download and install 32-bit version of [Python 3.6.0](https://www.python.org/downloads/release/python-360/)
    * Or whatever version of python is required by gVim. If you type `:version` you should see something along the lines of `--DDYNAMIC_PYTHON3_DLL="\python36.dll\"` so you will need that version of python
    * When installing make sure to "Add to Path" or you will have to manually add the path of the executable to the environmental variable "path"
* Download the latest windows binary version for ripgrep [here](https://github.com/BurntSushi/ripgrep/releases)
    * extract the folder 
    * make a new folder in the C: drive, call it 'executables' 
    * add the rg.exe to the 'executables' folder
    * edit your $PATH environmental variable to include the 'executables' directory
    * open the command prompt and type `rg --help` to make sure it is working
* Download the cygwin setup [here](https://www.cygwin.com/)
    * search for `ctags` 
    * install ctags 
    * edit your $PATH environmental variable to include the directory where all the cygwin .bin files are 
    * open the command prompt and type `ctags` to make sure that it is properly installed 
* I recommend Dank Mono as an appropriate programming font, you can purchase it
  [here](https://dank.sh/)
* I recommend using 256\_noir, the theme is minimal and I have configured it to completely hide comments, this helps with readability. 

## clone the repository
* Change to your $HOME directory and run the following git commands

```@console
git init
git remote add origin https://github.com/jave3737/sirvimalot.git
git fetch
git checkout -t origin/master
git submodule init 
git submodule update
```

# recommended plugins
| type        | plugin                                                                                     | Base? |
| ----        | ----                                                                                       | ----  |
| aesthetics  | [goyo](https://github.com/junegunn/goyo.vim)                                               |       |
| aesthetics  | [indentLine](https://github.com/Yggdroot/indentLine)                                       |       |
| aesthetics  | [lightline](https://github.com/itchyny/lightline.vim)                                      |       |
| aesthetics  | [xterm-color-table](https://github.com/guns/xterm-color-table.vim)                         | Y     |
| colorscheme | [256noir](https://github.com/andreasvc/vim-256noir.git)                                    | Y     |
| completion  | [jedi-vim](https://github.com/davidhalter/jedi-vim)                                        |       |
| completion  | [ultisnips](https://github.com/sirver/UltiSnips)                                           |       |
| editing     | [YankStack](https://github.com/maxbrunsfeld/vim-yankstack)                                 | Y     |
| editing     | [copy-cut-paste](https://github.com/NLKNguyen/copy-cut-paste.vim)                          | Y     |
| editing     | [vim-easy-align](https://github.com/junegunn/vim-easy-align)                               |       |
| editing     | [vim-surround](https://github.com/tpope/vim-surround)                                      |       |
| git         | [gv](https://github.com/junegunn/gv.vim)                                                   |       |
| git         | [vim-fugitive](https://github.com/tpope/vim-fugitive)                                      |       |
| git         | [vim-gitgutter](https://github.com/airblade/vim-gitgutter)                                 |       |
| interface   | [taboo](https://github.com/gcmt/taboo.vim)                                                 | Y     |
| navigation  | [golden-ratio](https://github.com/roman/golden-ratio)                                      |       |
| navigation  | [gutentags](https://github.com/ludovicchabant/vim-gutentags/blob/master/doc/gutentags.txt) | Y     |
| navigation  | [leaderf](https://github.com/Yggdroot/LeaderF)                                             |       |
| navigation  | [nerdtree](https://github.com/scrooloose/nerdtree)                                         | Y     |
| navigation  | [quick-scope](https://github.com/unblevable/quick-scope)                                   |       |
| syntax      | [syntaxattr](https://github.com/vim-scripts/SyntaxAttr.vim.git)                            | Y     |
| utility     | [vim-peekaboo](https://github.com/junegunn/vim-peekaboo)                                   |       |
| utility     | [vimCalc3](https://github.com/fedorenchik/VimCalc3)                                        |       |

# cheatsheet
| type        | command                           | descrition                                                                                                                |
| ----        | ----                              | ----                                                                                                                      |
| commandline | \<C-R\>"                          | paste a yanked line into the commandline                                                                                  |
| editing     | :g/^$/d                           | delete all blank lines                                                                                                    |
| editing     | :g/pattern/s/old/new/g            | apply a substition to only lines that match pattern                                                                       |
| editing     | :n,md                             | delete lines within range n,m                                                                                             |
| editing     | :n,ms/^.\{x\}//                   | within lines n,m remove x number of char from the begginning of each line                                                 |
| editing     | :n,ms/^/char                      | within lines n,m add char to the beggining of each line                                                                   |
| editing     | :n,msort                          | within lines n,m sort the lines in alphabetical order                                                                     |
| editing     | :v/pattern/s/old/new/g            | apply a substition to only lines that do not match pattern                                                                |
| editing     | gUU                               | change all letters on line to uppercase                                                                                   |
| editing     | guu                               | change all letters on line to lowercase                                                                                   |
| gitgutter   | [c                                | go to last previously edited location                                                                                     |
| gitgutter   | ]c                                | go to next edited location                                                                                                |
| navigation  | :b#                               | switch to the previous buffer last edited in                                                                              |
| registers   | "Kyy                              | append to register k                                                                                                      |
| registers   | "\*p                              | paste from clipboard register                                                                                             |
| registers   | "\*yy                             | copy to clipboard register                                                                                                |
| registers   | "kp                               | paste from register k                                                                                                     |
| registers   | "kyy                              | copy current line to register k                                                                                           |
| registers   | :reg                              | to access all currently defined registers                                                                                 |
| searching   | :!rg --vimgrep --type="c" pattern | using ripgrep, only search for the pattern within c-related files. Type `rg --type-list` to see globs that make up a type |

# colorscheme reference
* type `:help highlight` for extensive information
* type `:xTermColorTable` for a color reference
* type `:call SyntaxAtrr()` to get information about the group the cursor is currently on
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

| group        | description                    | examples                  |
| ----         | ----                           |                           |
| Normal       | normal text                    |                           |
| Statement    |                                |                           |
| LineNr       | line numbers                   |                           |
| CursorLineNr | line number of the cursor line |                           |
| Comment      | comments                       |                           |
| String       | strings                        | "hello", 'world'          |
| Type         | data types                     | int, uint16_t, void, char |
| PreProc      | preprocessor                   |                           |
| Identifier   |                                |                           |
| Special      | brackets, parenthesis          | [], ()                    |

# installing python3.6 packages
* downloading python should also install pip3.6 
* `pip3.6 --proxy https://username:password@address.com:port install <python_package>`
