# Description 
This repository provides a complete development environment using Vim. Also provides a rudimentary method for managing various users using the same vim configuration while allowing for custom configurations.

# Getting Started
## Prerequisites 
* Download [gVim v8.0](https://www.vim.org/download.php)
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

## Windows Configuration
* Add an environmental variable `$HOME` with path of the directory that you will refer to as your HOME directory.

## Cloning the Repository
* Change to your $HOME directory and run the following git commands

```@console
git init
git remote add origin https://github.com/jave3737/sirvimalot.git
git fetch
git checkout -t origin/master
git submodule init 
git submodule update
```

# Base and Recommended Plugins
| Plugins                                                                                    | Description | Comments |
| ----                                                                                       | ----        | ----     |
| [Copy-Cut-Paste](https://github.com/NLKNguyen/copy-cut-paste.vim)                          |             |          |
| [NerdTree](https://github.com/scrooloose/nerdtree)                                         |             |          |
| [Taboo](https://github.com/gcmt/taboo.vim)                                                 |             |          |
| [YankStack](https://github.com/maxbrunsfeld/vim-yankstack)                                 |             |          |
| [gutentags](https://github.com/ludovicchabant/vim-gutentags/blob/master/doc/gutentags.txt) |             |          |
| [LeaderF](https://github.com/Yggdroot/LeaderF)                                             |             |          |
| [VimCalc3](https://github.com/fedorenchik/VimCalc3)                                        |             |          |
| [golden-ratio](https://github.com/roman/golden-ratio)                                      |             |          |
| [goyo](https://github.com/junegunn/goyo.vim)                                               |             |          |
| [gv](https://github.com/junegunn/gv.vim)                                                   |             |          |
| [indentLine](https://github.com/Yggdroot/indentLine)                                       |             |          |
| [jedi-vim](https://github.com/davidhalter/jedi-vim)                                        |             |          |
| [lightline](https://github.com/itchyny/lightline.vim)                                      |             |          |
| [quick-scope](https://github.com/unblevable/quick-scope)                                   |             |          |
| [ultisnips](https://github.com/sirver/UltiSnips)                                           |             |          |
| [vim-easy-align](https://github.com/junegunn/vim-easy-align)                               |             |          |
| [vim-fugitive](https://github.com/tpope/vim-fugitive)                                      |             |          |
| [vim-gitgutter](https://github.com/airblade/vim-gitgutter)                                 |             |          |
| [falcon](https://github.com/fenetikm/falcon)                                               |             |          |
| [gruvbox](https://github.com/morhetz/gruvbox)                                              |             |          |
| [iceberg](https://github.com/cocopon/iceberg.vim)                                          |             |          |
| [bargreybars](https://github.com/dreadnaut/vim-bargreybars)                                |             |          |
| [vim-surround](https://github.com/tpope/vim-surround)                                      |             |          |


# Installing python3.6 packages 
* downloading python should also install pip3.6 
* `pip3.6 --proxy https://username:password@address.com:port install <python_package>`
