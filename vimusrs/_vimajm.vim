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
set showmatch
set number
set tags=tags;/
set guifont=Dank_Mono:h12:cANSI
set tabstop=4
set shiftwidth=4
set softtabstop=4
colorscheme vividchalk
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"PLUGIN SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:Lf_ShowRelativePath = 0
let g:Lf_WindowHeight = 0.1
let g:Lf_DefaultMode = 'NameOnly'
let g:Lf_RgConfig = [
            \ "--glob=Makefile",
            \ "--glob=makefile",
            \ "--glob=CMakeLists.txt",
            \ "--glob=*.yaml",
            \ "--glob=*.c",
            \ "--glob=*.cpp",
            \ "--glob=*.h",
            \ "--glob=*.txt",
            \ "--glob=*.md",
            \ "--glob=*.tcl",
            \ "--glob=*.v",
            \ "--glob=*.vhd"
            \ ]
let g:UltiSnipsEditSplit          = 'vertical'
let g:UltiSnipsSnippetDirectories = [$HOME . "/Documents/custom_snippets"]
let g:NERDTreeWinSize = 20
let g:tagbar_left = 1
let g:tagbar_compact = 1
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"KEYMAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"easy align"
xmap     ga          <Plug>(EasyAlign)
nmap     ga          <Plug>(EasyAlign)
"restore scrolling" 
nnoremap <C-E> 10<C-E>
nnoremap <C-Y> 10<C-Y>
nnoremap <C-F> <C-F>
"leader f"
nnoremap <leader>r :help quickref <CR>
nnoremap <leader>f :Leaderf file <CR>
nnoremap <leader>d :Leaderf line <CR>
nnoremap <leader>s :Leaderf bufTag<CR>
nnoremap <leader>a :Leaderf rg<CR>
"function keys"
map <F1>  :vsplit $HOME/vimusrs/_vimajm.vim<CR>
map <F2>  :NERDTreeToggle<CR>
map <F3>  :UltiSnipsEdit<CR>
map <F4>  :TagbarToggle<CR>
map <F5>  :GoldenRatioToggle<CR>
map <F6> :set relativenumber!<CR>
map <F7> :set hlsearch!<CR>
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
""let g:vim_current_word#highlight_current_word = 0
""set wildignore=*.o,*.jpg,*.png,*.make,*.bin,*.pyc,
""map <F2>  :UltiSnipsEdit<CR>
""set spell
""function! Find_in_file_and_print(string,number_of_lines)
""    :redir @a
""    :silent execute "g/" . a:string . "/z#." . a:number_of_lines . "| echo'==============='"
""    :redir END
""    :new
""    :put! a
""endfunction
"""close a split in different directions"
""function! Close_left()
""    :call feedkeys("\<C-w>h:q\<CR>")
""endfunction
""function! Close_right()
""    :call feedkeys("\<C-w>l:q\<CR>")
""endfunction
""function! Close_up()
""    :call feedkeys("\<C-w>k:q\<CR>")
""endfunction
""function! Close_down()
""    :call feedkeys("\<C-w>j:q\<CR>")
""endfunction
"close splits"
""nnoremap <C-Left>  :call Close_left()<CR>
""nnoremap <C-Right> :call Close_right()<CR>
""nnoremap <C-Up>    :call Close_up()<CR>
""nnoremap <C-Down>  :call Close_down()<CR>
"""set recursive searching"
""let ToggleRecursive = 0
""function! Toggle_recursive()
""    if g:ToggleRecursive == 1
""        let g:ToggleRecursive = 0
""        set path-=**
""        echo "Recursive Find Off"
""    elseif g:ToggleRecursive == 0
""        let g:ToggleRecursive = 1
""        set path+=**
""        echo "Recursive Find On"
""    endif
""endfunction
"""change font size"
""let g:fs = 10
""let g:ft = "Dank_Mono"
""let g:fstring = g:ft . ":h" . g:fs . ":cANSI"
""function! Reset_font_size()
""    let g:fstring = g:ft . ":h" . g:fs . ":cANSI"
""    :silent execute "set guifont=" . g:fstring
""endfunction
""call Reset_font_size()
""function! Increase_font_size()
""    let g:fs = g:fs + 1
""    call Reset_font_size()
""endfunction
""function! Decrease_font_size()
""    let g:fs = g:fs - 1
""    call Reset_font_size()
""endfunction
""function! What_is_current_font()
""    echo g:fstring
""endfunction
"move around faster"
""noremap  J         10j
""vnoremap J         10j
""noremap  K         10k
""vnoremap K         10k
""noremap  L         15l
""vnoremap L         15l
""noremap  H         15h
""vnoremap H         15h
""noremap ,      :call Split_up()<CR>
""noremap .      :call Split_down()<CR>
""noremap >      :call Split_right()<CR>
""noremap <      :call Split_left()<CR>
""noremap <SPACE> :wa<CR>
""map <F2>  :set  relativenumber!<CR>
""map <F3>  :set  hlsearch!<CR>
""
""map <F6> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
"source vimrc"
""nnoremap <leader>sv  :source $MYVIMRC <cr>
""map <F2>  :TagbarToggle<CR>
""map <F4>  :UndotreeToggle<CR>
"change split sizes quickly"
""nnoremap _         20<C-w><<CR>
""nnoremap +         20<C-w>><CR>
""nnoremap -         20<C-w>-<CR>
""nnoremap =         20<C-w>+<CR>
""let g:tagbar_left = 1
""let g:tagbar_compact = 1
""let g:tagbar_width = 30
""let g:tagbar_autoclose = 0
""let g:tagbar_silent = 1
""let g:undotree_SplitWidth = 20
"let g:vim_current_word#highlight_current_word = 0
""set complete+=kspell
"bracket autocomplete"
""inoremap {         {}<left>
""inoremap (         ()<left>
""inoremap [         []<left>
""inoremap <         <lt>><left>
""inoremap "         ""<left>
""inoremap '         ''<left>
"split in different directions"
"noremap J :call Split_down()<CR>
"noremap K :call Split_up()<CR>
"noremap L :call Split_right()<CR>
"noremap H :call Split_left()<CR>
"quickly leave insert mode"
"imap jj <ESC>l
""quit and save the current split"
"noremap q :w<CR>
""split in different directions"
"function! Split_left()
"    :set nosplitright
"    :silent execute ":vs"
"endfunction
"function! Split_right()
"    :set splitright
"    :silent execute ":vs"
"endfunction
"function! Split_up()
"    :set nosplitbelow
"    :silent execute ":sp"
"endfunction
"function! Split_down()
"    :set splitbelow
"    :silent execute ":sp"
"endfunction
""move to left or right splits"
"noremap H <C-w>h
"noremap L <C-w>l
"noremap J <C-D>
"noremap K <C-U>
"inoremap jj <ESC>
"inoremap kk <C-P>
