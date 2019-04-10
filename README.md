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
### Linux 
+ The git repo will add the `.vimrc` file and create a `.vim` directory in`/home/<me>`
  - NOTE: Hidden files have a '.' in front of them in Linux. In order to see the files/dirs run `ls -a` 
+ *TODO add how to add HOME to Linux path*

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

# Usage guidelines
* Saved sessions go into the `~/vimtemp/` 

# Useful Commands 
* `set titlestring=Hello` Sets the title of the window to Hello
* `vs **/*<partial file name><Tab>` This can be used to do a fuzzy file search based on a keyword. Pretty useful when you dont have ctrlP or leaderF
*  just testing

