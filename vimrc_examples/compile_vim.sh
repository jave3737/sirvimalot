################################################################################
# INFORMATION
################################################################################
# extract the vim-master from https://github.com/vim/vim
# cd vim-master 
# chmod 777 this_script.sh
# ./this_script.sh
# to compile with python you must find the location of /config directory
################################################################################
# SETTINGS FOR CONFIGURING THE VIM COMPILATION
################################################################################
./configure --with-features=huge \
    --enable-multibyte \
    --enable-pythoninterp=yes \
    --enable-python-config-dir=/usr/lib64/python2.7/config \
    --enable-cscope \
    --prefix=$HOME
################################################################################
# REQUIRES GCC
################################################################################
make 
make install

