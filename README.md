# Description 
This repository provides a complete development environment using Vim. Also provides a rudimentary method for managing various users using the same vim configuration while allowing for custom configurations.

## Current Plugins 
* [Copy-Cut-Paste](https://github.com/NLKNguyen/copy-cut-paste.vim)
* [LeaderF](https://github.com/Yggdroot/LeaderF)
* [NerdTreeToggle](https://github.com/scrooloose/nerdtree)
* [Taboo](https://github.com/gcmt/taboo.vim)
* [UltiSnips](https://github.com/sirver/UltiSnips)
* [Easy-Align](https://github.com/junegunn/vim-easy-align)
* [Javascript Syntax](https://github.com/jelera/vim-javascript-syntax)
* [Solidity Syntax](https://github.com/tomlion/vim-solidity)
* [YankStack](https://github.com/maxbrunsfeld/vim-yankstack)
* [Current Word](https://github.com/dominikduda/vim_current_word)
* [undotree](https://github.com/mbbill/undotree)
* [indentLine](https://github.com/Yggdroot/indentLine)
* [gutentags](https://github.com/ludovicchabant/vim-gutentags/blob/master/doc/gutentags.txt)

## Other Tools 
* [ripgrep](https://github.com/BurntSushi/ripgrep)
* ctags via cygwin 

# Getting Started
## Prerequisites 
* Download [gVim v8.0](https://www.vim.org/download.php)
* Download and install 32-bit version of [Python 3.6.0](https://www.python.org/downloads/release/python-360/)
    * When installing make sure to "Add to Path" or you will have to manually add the path of the executable to the environmental variable "path"

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

## Adding a New User File
* Create a new .vim file in the `$HOME/vimusrs/` directory. This is the file where you will make changes to your keymappings, gui settings, colorschemes, etc. 
* Modify `$HOME/vimusrs/_vimcurrusr.vim` and link in the file you just created.  

## Adding a Custom Snippets Directory 
* Using the UltiSnips plugin one is able to create a collection of snippets 
* Create a new directory called `$HOME/custom_snippets`
* In your user file add the following lines
> let g:UltiSnipsEditSplit = 'vertical'
> let g:UltiSnipsSnippetDirectories = [$HOME . "/custom_snippets"]
* Refer to the plugin documentation or the default snippets for examples

# Adding New Plugins
* Using gitBash or CommandExe go to `$HOME/vimfiles/bundle` and add the submodule as `git submodule add </link/to/REPO>`
* Commit the changes `git commit -m <submodule> -a` and `git push` 
* Run `git submodule update`

# Installing ripgrep 
* download the latest windows binary version for ripgrep [here](https://github.com/BurntSushi/ripgrep/releases)
* extract the folder 
* make a new folder in the C: drive, call it 'executables' 
* add the rg.exe to the 'executables' folder
* edit your $PATH environmental variable to include the 'executables' directory
* open the command prompt and type `rg --help` to make sure it is working

# Installing ctags using cygwin 
* download the cygwin setup [here](https://www.cygwin.com/)
* search for `ctags` 
* install ctags 
* edit your $PATH environmental variable to include the directory where all the cygwin .bin files are 
* open the command prompt and type `ctags` to make sure that it is properly installed 
