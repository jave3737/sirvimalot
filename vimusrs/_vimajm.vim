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
let g:Lf_WindowHeight = 0.3
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
let g:tagbar_autoshowtag = 1
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"AUTO COMMMANDS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd VimEnter * bad $HOME/Documents/bookmarks/bookmarks.yaml
autocmd VimEnter * bad $HOME/vimusrs/_vimajm.vim
autocmd VimEnter * bad $HOME/.gitconfig
autocmd VimEnter * bad $HOME/vimfiles/pythonx/custom_snippet_helpers.py
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"KEYMAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
nnoremap <C-E> <C-E>
nnoremap <C-Y> <C-Y>
nnoremap <C-F> <C-F>
inoremap <C-Y> <C-Y>
inoremap <C-E> <C-E>

nnoremap <leader>f :LeaderfFile<CR>
nnoremap <leader>d :LeaderfLine<CR>
nnoremap <leader>s :Leaderf rg<CR>
"function keys"
map <F2> :NERDTreeToggle<CR>
map <F3> :TagbarToggle<CR>
map <F4> :UltiSnipsEdit<CR>
