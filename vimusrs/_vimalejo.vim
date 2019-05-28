"Custom===================================================================================
set wildignore=*.o,*.jpg,*.png,*.make,*.bin,*.pyc,

noremap  J           5j
vnoremap J           5j
noremap  K           5k
vnoremap K           5k
noremap  L           5l
vnoremap L           5l
noremap  H           5h
vnoremap H           5h

""""""""""""""""""""""""""""""""""""""""""""""""""
"AUTO 
""""""""""""""""""""""""""""""""""""""""""""""""""
set number relativenumber 
:augroup numbertoggle 
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
