" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ackprg= 'ag --vimgrep'
endif

"Set files to ignore"
set wildignore=*.o,*.jpg,*.png,*.make,*.bin,*.pyc,*.hex, 
"Set guifont"
set guifont=Dank_Mono:h10:cANSI
"Show the matching bracket"
set showmatch
"Display Line Numbers"
set number
"Enable path for recursive searching"
"Easy Align"
xmap     ga          <Plug>(EasyAlign)
nmap     ga          <Plug>(EasyAlign)
"Source _vimrc file"
nnoremap <leader>sv  :source $MYVIMRC <cr>
"Move to other tabs"
nnoremap <C-Left>    :tabprevious<CR>
nnoremap <C-Right>   :tabnext<CR>
"Change split sizes"
nnoremap _           10<C-w><<CR>
nnoremap +           10<C-w>><CR>
nnoremap -           10<C-w>-<CR>
nnoremap =           10<C-w>+<CR>
"Autocompletes parenthesis"
inoremap { {}<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap < <lt>><left>
inoremap " ""<left>
inoremap ' ''<left>
"Navigate through a file faster"
noremap  J           10j
vnoremap J           10j
noremap  K           10k
vnoremap K           10k
noremap  L           15l
vnoremap L           15l
noremap  H           15h
vnoremap H           15h
"split windows "
noremap .      :split<CR>
noremap >      :vsplit<CR>
"navigate through tabs quickly"
noremap <C-h> :tabprevious<CR>
noremap <C-l> :tabnext<CR>
"cycle through splits"
noremap <C-j> <C-w>w
noremap <C-k> <C-w>W
"create a new tab quickly"
nmap     <leader>tn        :tabnew<CR>
"close the current tab"
nmap     <leader>tc        :tabclose<CR>
"Quickly save and exit insert mode"
imap     jj         <Esc>:w<CR>
"Timestamp quick key"
nnoremap <C-t>       a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
inoremap <C-t>       <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
"Cycle through results from grep/vimgrep"
nnoremap <C-Down>   :cnext<CR>
nnoremap <C-Up>     :cprevious<CR>
"Quicly Open quickref"
nnoremap <leader>r   :help quickref <cr>
"Leaderf"
nnoremap <leader>j  :LeaderfLine <CR>
"Search for the word under the cursor"
nnoremap <leader>s :execute "Ack " . expand("<cWORD>") . " " . expand("%") <CR>
nnoremap <leader>a :execute "Ack " . expand("<cword>") . " " . expand("%") <CR> 
"Search for a word under the cursor recursively"
nnoremap <leader>sr :execute "Ack " . expand("<cWORD>") . " " . expand(".") <CR> 
nnoremap <leader>ar :execute "Ack " . expand("<cword>") . " " . expand(".") <CR> 
"open quicklist"
nnoremap <leader>q :copen <CR>
"close quicklist"
nnoremap <leader>qq :cclose <CR>
"Quickly open bookmarks file"
nnoremap <leader>bm :vs $HOME/Documents/bookmarks/bookmarks.yaml <cr>
"toggle between relativenumber vs normal"
map <F1> :set relativenumber!<CR>
map <F2> :call Toggle_recursive()<CR>
"Ultisnips Settings"
let g:UltiSnipsEditSplit          = 'vertical'
let g:UltiSnipsSnippetDirectories = [$HOME . "/custom_snippets"]
"Find a pattern in a file and print the results to a seperate window"
function! Find_in_file_and_print(string,number_of_lines)
    :redir @a
    :silent execute "g/" . a:string . "/z#." . a:number_of_lines . "| echo'==============='"
    :redir END
    :new
    :put! a
endfunction
"This helps turning off the recursive searching"
let ToggleRecursive = 0
function! Toggle_recursive()
    if g:ToggleRecursive == 1
        let g:ToggleRecursive = 0
        set path-=**
        echo "Recursive Find Off"
    elseif g:ToggleRecursive == 0
        let g:ToggleRecursive = 1
        set path+=**
        echo "Recursive Find On"
    endif
endfunction


