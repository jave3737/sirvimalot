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
| aesthetics  | [bargreybars](https://github.com/dreadnaut/vim-bargreybars)                                |
| aesthetics  | [goyo](https://github.com/junegunn/goyo.vim)                                               |
| aesthetics  | [indentLine](https://github.com/Yggdroot/indentLine)                                       |
| aesthetics  | [lightline](https://github.com/itchyny/lightline.vim)                                      |
| aesthetics  | [xterm-color-table](https://github.com/guns/xterm-color-table.vim)                         |
| colorscheme | [256noir](https://github.com/andreasvc/vim-256noir.git)                                    |
| colorscheme | [apprentice](https://github.com/romainl/Apprentice)                                        |
| colorscheme | [fahrenheit](https://github.com/fcpg/vim-fahrenheit)                                       |
| colorscheme | [falcon](https://github.com/fenetikm/falcon)                                               |
| colorscheme | [hemisu](https://github.com/noahfrederick/vim-hemisu)                                      |
| colorscheme | [iceberg](https://github.com/cocopon/iceberg.vim)                                          |
| colorscheme | [monokai-tasty](https://github.com/patstockwell/vim-monokai-tasty)                         |
| colorscheme | [onedark](https://github.com/joshdick/onedark.vim)                                         |
| colorscheme | [seoul256](https://github.com/junegunn/seoul256.vim)                                       |
| colorscheme | [spacedust](https://github.com/hallski/spacedust-theme)                                    |
| colorscheme | [srcery](https://github.com/srcery-colors/srcery-vim)                                      |
| colorscheme | [tender](https://github.com/jacoborus/tender.vim)                                          |
| colorscheme | [vividchalk](https://github.com/tpope/vim-vividchalk)                                      |
| completion  | [doge](https://github.com/kkoomen/vim-doge)                                                |
| completion  | [jedi-vim](https://github.com/davidhalter/jedi-vim)                                        |
| completion  | [supertab](https://github.com/ervandew/supertab)                                           |
| completion  | [ultisnips](https://github.com/sirver/UltiSnips)                                           |
| editing     | [YankStack](https://github.com/maxbrunsfeld/vim-yankstack)                                 |
| editing     | [copy-cut-paste](https://github.com/NLKNguyen/copy-cut-paste.vim)                          |
| editing     | [nerdcommenter](https://github.com/scrooloose/nerdcommenter)                               |
| editing     | [vim-easy-align](https://github.com/junegunn/vim-easy-align)                               |
| editing     | [vim-surround](https://github.com/tpope/vim-surround)                                      |
| git         | [gv](https://github.com/junegunn/gv.vim)                                                   |
| git         | [vim-fugitive](https://github.com/tpope/vim-fugitive)                                      |
| git         | [vim-gitgutter](https://github.com/airblade/vim-gitgutter)                                 |
| git         | [agit](https://github.com/cohama/agit.vim)                                                 |
| interface   | [taboo](https://github.com/gcmt/taboo.vim)                                                 |
| navigation  | [ctrlp](https://github.com/ctrlpvim/ctrlp.vim)                                             |
| navigation  | [golden-ratio](https://github.com/roman/golden-ratio)                                      |
| navigation  | [gutentags](https://github.com/ludovicchabant/vim-gutentags/blob/master/doc/gutentags.txt) |
| navigation  | [leaderf](https://github.com/Yggdroot/LeaderF)                                             |
| navigation  | [nerdtree](https://github.com/scrooloose/nerdtree)                                         |
| navigation  | [quick-scope](https://github.com/unblevable/quick-scope)                                   |
| navigation  | [tagbar](https://github.com/majutsushi/tagbar/blob/master/doc/tagbar.txt)                  |
| syntax      | [polyglot](https://github.com/sheerun/vim-polyglot)                                        |
| syntax      | [syntaxattr](https://github.com/vim-scripts/SyntaxAttr.vim.git)                            |
| utility     | [undotree](https://github.com/mbbill/undotree)                                             |
| utility     | [vim-peekaboo](https://github.com/junegunn/vim-peekaboo)                                   |
| utility     | [vimCalc3](https://github.com/fedorenchik/VimCalc3)                                        |


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

## how do I install python3.6 packages that might be used by certain vim plugins
* downloading python should also install pip3.6 
* `pip3.6 --proxy https://username:password@address.com:port install <python_package>`

