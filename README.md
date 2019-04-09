# Install Instructions for Windows
* If using Windows add an environmental variable $HOME with the value of the directory that you will refer to as your HOME directory
* That directory might not be empty so use the following git commands to clone into a non-empty repository
* git init
* git remote add origin https://github.com/jave3737/sirvimalot.git
* git fetch
* git checkout -t origin/master
* git submodule init 
* git submodule update

# Running on Linux 
* Change _vimrc file to .vimrc 
* Change vimfiles to .vim

# Adding support for python3 to gvim
* Required for Leaderf, 
* First type ':version' in Gvim and you should see '-DDYNAMIC_PYTHON3_DLL=\"python35.dll\' this indicates the version of python you will need to download, I will typically go with the 32 bit version of pythonx.x.0
* You need to add the path to the python35.dll to the $PATH environmental variable. This might be in a directory like 'C:\Users\Jave\AppData\Local\Programs\Python\Python35-32' 

# Adding plugins to the repository 
* Using gitBash or CommandExe go to $HOME/vimfiles/bundle and you have to add the submodule as 'git add submodule /link/to/REPO'
* Then commit the changes 'git commit -m "Adding new plugin/submodule"' and 'git push' 
* Then run 'git submodule update' 

# Usage guidelines
* Saved sessions go into the '~/vimtemp/' 
* 



# Useful Commands 
* 'set titlestring=Hello' Sets the title of the window to Hello

