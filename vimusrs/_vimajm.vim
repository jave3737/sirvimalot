"Set files to ignore"
set wildignore=*.o,*.jpg,*.png,*.make,*.bin,*.pyc,
"Set guifont"
set guifont=Dank_Mono:h14:cANSI
"Show the matching bracket"
set showmatch
"Display Line Numbers"
set number
"Easy Align"
xmap     ga          <Plug>(EasyAlign)
nmap     ga          <Plug>(EasyAlign)
"Autocompletes parenthesis"
inoremap { {}<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap < <lt>><left>
inoremap " ""<left>
inoremap ' ''<left>
"Navigate through a file faster"
noremap  J           5j
vnoremap J           5j
noremap  K           5k
vnoremap K           5k
noremap  L           5l
vnoremap L           5l
noremap  H           5h
vnoremap H           5h
"Timestamp quick key"
nnoremap <C-t>       a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
inoremap <C-t>       <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
"Cycle through results from grep/vimgrep"
nnoremap <C-Down>   :cnext<CR>
nnoremap <C-Up>     :cprevious<CR>
"Quickly save and exit insert mode"
imap     jj         <Esc>:w<CR>
"Quicly Open quickref"
nnoremap <leader>r   :help quickref <cr>
"Leaderf"
nnoremap <leader>j  :LeaderfLine <CR>
"Recursively search for the pattern under a cursor in the current directory"
nnoremap <leader>g  :execute "grep -nHIR " . expand("<cword>") . " " .expand(".") <CR> :copen <CR>
"Search for a pattern under the cursor in the current file"
nnoremap <leader>gl :execute "grep -nH " . expand("<cword>") . " " .expand("%") <CR>
"Quickly open bookmarks file"
nnoremap <leader>bm :vs $HOME/Documents/bookmarks/bookmarks.yaml <cr>
"Ultisnips Settings"
let g:UltiSnipsEditSplit          = 'vertical'
let g:UltiSnipsSnippetDirectories = [$HOME . "/custom_snippets"]
"Find a pattern in a file and print the results to a seperate window"
function! Find_in_files_and_print(string,number_of_lines)
    :redir @a
    :silent execute "g/" . a:string . "/z#." . a:number_of_lines . "| echo'==============='"
    :redir END
    :new
    :put! a
endfunction
