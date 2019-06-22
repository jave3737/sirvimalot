""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Search Tools
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('rg')
    set grepprg=rg\ --vimgrep
elseif executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"GUI SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""set wildignore=*.o,*.jpg,*.png,*.make,*.bin,*.pyc,
set showmatch
set number
set tags=tags;/
set complete+=kspell
""set spell
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"PLUGIN SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsEditSplit          = 'vertical'
let g:UltiSnipsSnippetDirectories = [$HOME . "/custom_snippets"]
let g:vim_current_word#highlight_current_word = 0
let g:Lf_ShowRelativePath = 0
let g:Lf_WindowHeight = 0.1
let g:Lf_DefaultMode = 'NameOnly'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"FUNCTIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! Find_in_file_and_print(string,number_of_lines)
    :redir @a
    :silent execute "g/" . a:string . "/z#." . a:number_of_lines . "| echo'==============='"
    :redir END
    :new
    :put! a
endfunction
"set recursive searching"
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
"change font size"
let g:fs = 10
let g:ft = "Dank_Mono"
let g:fstring = g:ft . ":h" . g:fs . ":cANSI"
function! Reset_font_size()
    let g:fstring = g:ft . ":h" . g:fs . ":cANSI"
    :silent execute "set guifont=" . g:fstring
endfunction
call Reset_font_size()
function! Increase_font_size()
    let g:fs = g:fs + 1
    call Reset_font_size()
endfunction
function! Decrease_font_size()
    let g:fs = g:fs - 1
    call Reset_font_size()
endfunction
function! What_is_current_font()
    echo g:fstring
endfunction
"split in different directions"
function! Split_left()
    :set nosplitright
    :silent execute ":vs"
endfunction
function! Split_right()
    :set splitright
    :silent execute ":vs"
endfunction
function! Split_up()
    :set nosplitbelow
    :silent execute ":sp"
endfunction
function! Split_down()
    :set splitbelow
    :silent execute ":sp"
endfunction
"close a split in different directions"
function! Close_left()
    :call feedkeys("\<C-w>h:q\<CR>")
endfunction
function! Close_right()
    :call feedkeys("\<C-w>l:q\<CR>")
endfunction
function! Close_up()
    :call feedkeys("\<C-w>k:q\<CR>")
endfunction
function! Close_down()
    :call feedkeys("\<C-w>j:q\<CR>")
endfunction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"KEYMAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"easy align"
xmap     ga          <Plug>(EasyAlign)
nmap     ga          <Plug>(EasyAlign)
"source vimrc"
""nnoremap <leader>sv  :source $MYVIMRC <cr>
"change split sizes quickly"
nnoremap _         20<C-w><<CR>
nnoremap +         20<C-w>><CR>
nnoremap -         20<C-w>-<CR>
nnoremap =         20<C-w>+<CR>
"bracket autocomplete"
inoremap {         {}<left>
inoremap (         ()<left>
inoremap [         []<left>
inoremap <         <lt>><left>
inoremap "         ""<left>
inoremap '         ''<left>
"move around faster"
noremap  J         10j
vnoremap J         10j
noremap  K         10k
vnoremap K         10k
noremap  L         15l
vnoremap L         15l
noremap  H         15h
vnoremap H         15h
"split in different directions"
noremap ,      :call Split_up()<CR>
noremap .      :call Split_down()<CR>
noremap >      :call Split_right()<CR>
noremap <      :call Split_left()<CR>
"close splits"
nnoremap <C-Left>  :call Close_left()<CR>
nnoremap <C-Right> :call Close_right()<CR>
nnoremap <C-Up>    :call Close_up()<CR>
nnoremap <C-Down>  :call Close_down()<CR>
"navigate through splits"
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j 
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
"quickly leave insert mode"
imap jj <ESC>l
"leader f"
nnoremap <leader>f :Leaderf file <CR>
nnoremap <leader>d :Leaderf line <CR>
nnoremap <leader>s :Leaderf bufTag<CR>
nnoremap <leader>a :Leaderf rg<CR>
nnoremap <leader>c :LeaderfLineCword<CR>
nnoremap <leader>x :LeaderfTagCword<CR>
"function keys"
map <F1>  :set  relativenumber!<CR>
map <F2>  :UltiSnipsEdit<CR>
map <F3>  :NERDTreeToggle<CR>
map <F4>  :UndotreeToggle<CR>
map <F5>  :set  hlsearch!<CR>
map <F6> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
map <F11> :call Decrease_font_size()<CR>
map <F12> :call Increase_font_size()<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"DEPRECATED STUFF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""map <F2>  :call Toggle_recursive()<CR>
"other useful stuff i dont want at the moment "
""nnoremap <leader>j  :LeaderfLine <CR>
""nnoremap <leader>s :execute "Ack -Q " . expand("<cWORD>") . " " . expand("%") <CR>
""nnoremap <leader>a :execute "Ack " . expand("<cword>") . " " . expand("%") <CR> 
""nnoremap <leader>sr :execute "Ack " . expand("<cWORD>") . " " . expand(".") <CR> 
""nnoremap <leader>ar :execute "Ack " . expand("<cword>") . " " . expand(".") <CR> 
""nmap     <leader>tn        :tabnew<CR>
""nmap     <leader>tc        :tabclose<CR>
""noremap <C-h> :tabprevious<CR>
""noremap <C-l> :tabnext<CR>
""noremap <C-j> <C-w>w
""noremap <C-k> <C-w>W
""nnoremap <leader>r   :help quickref <cr>
""nnoremap <leader>q :copen <CR>
""nnoremap <leader>qq :cclose <CR>
""nnoremap <leader>m :Leaderf --fullScreen mru <CR>
"""moving to other grep search"
""nnoremap <C-Down>   :cnext<CR>
""nnoremap <C-Up>     :cprevious<CR>
"""time stamp key"
""nnoremap <C-t>       a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
""inoremap <C-t>       <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
""if executable('ag')
""  set grepprg=ag\ --nogroup\ --nocolor
""  let g:ackprg= 'ag --vimgrep'
""endif
