# Getting Started
This READ ME has information for all the components needed to recreate this Vim setup. 

## Prerequisites 
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
