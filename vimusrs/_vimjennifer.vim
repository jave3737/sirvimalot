"  GLOBAL VARIABLES
"  ===========================================
" TOOLBAR
set guioptions=m

" Remap left arrow key and right array key to switch between tabs
nnoremap <LEFT> :tabprevious<CR>
nnoremap <RIGHT> :tabnext<CR>
" Remap keys to switch between tabs
nnoremap <C-J> <C-W><C-J> 
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" LIGHT LINE
" Cool custom one
let g:lightline_themes = [ 'powerline', 'wombat', 'jellybeans', 
                            \ 'solarized dark', 
                            \ 'seoul256', 'one', 'landscape']
let g:lightline = {
      \ 'colorscheme': g:lightline_themes[5],
      \ }

let g:lightline = {'active':{'left':[['mode','paste'],['gitbranch','readonly','filename','modified']]},'component_function':{'gitbranch':'fugitive#head'},}
" QUICK SCOPE 
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" TAGBAR
" Open tag bar on the left side of screen
let g:tagbar_left = 1

set colorcolumn=80

" Function to set themes for different sessions
function! Default_env()
    :set guifont:Consolas:h14:cANSI:qDRAFT
    :cd $HOME
    :colorscheme fahrenheit
    ":colorscheme oceandeep 
endfunction

" CURRENT WORD
" Underline the word my cursor is over, but don't highlight it
let g:vim_current_word#highlight_current_word = 0

" Loop back around after hitting end of file
" during a search
set wrapscan

"setting up relative numbers:w
set number relativenumber 
:augroup numbertoggle 
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" :b _ + <tab> automatically open path vimrc

"autocmd VimEnter * bad $HOME/_vimrc
"autocmd VimEnter * bad $HOME/vimusrs/_vimjennifer.vim

"Navigate through a file faster"
noremap  J           5j
vnoremap J           5j
noremap  K           5k
vnoremap K           5k
noremap  L           5l
vnoremap L           5l
noremap  H           5h
vnoremap H           5h

"Quickly save and exit insert mode"
imap     jj         <Esc>:w<CR>
call Default_env()

