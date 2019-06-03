"Custom===================================================================================
set wildignore=*.o,*.jpg,*.png,*.make,*.bin,*.pyc,
set guifont=Dank_Mono:h14:cANSI

noremap  J           5j
vnoremap J           5j
noremap  K           5k
vnoremap K           5k
noremap  L           5l
vnoremap L           5l
noremap  H           5h
vnoremap H           5h

"""""""""""""""""""""""""""""""""""""""""""""""""""
""AUTO 
"""""""""""""""""""""""""""""""""""""""""""""""""""
set number
"set number relativenumber 
":augroup numbertoggle 
":  autocmd!
":  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
":  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
":augroup END

inoremap { {}<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap < <lt>><left>
inoremap " ""<left>
inoremap ' ''<left>

nnoremap <leader>bm  :vs $HOME/Documents/bookmarks/bookmarks.yaml <cr>

nnoremap <leader>g  :execute "grep -nHIR " . expand("<cword>") . " " .expand(".") <CR> :copen <CR>
nnoremap <leader>gl :execute "grep -nH " . expand("<cword>") . " " .expand("%") <CR>
nnoremap <C-Down>   :cnext<CR>
nnoremap <C-Up>     :cprevious<CR>
