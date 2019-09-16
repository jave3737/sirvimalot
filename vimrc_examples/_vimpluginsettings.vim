""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ultisnips
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsSnippetDirectories = [$HOME . "/Documents/custom_snippets"]
let g:UltiSnipsEditSplit          = 'vertical'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"quickscope
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"leaderf
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:Lf_ShortcutF=''
let g:Lf_ShortcutB=''
let g:Lf_WindowHeight = 0.2
let g:Lf_MruMaxFiles=10
let g:Lf_RgConfig = [
            \"--type=cmake",
            \"--type=c",
            \"--type=verilog",
            \"--type=vhdl",
            \"--type=txt",
            \"--type=html",
            \"--type=js",
            \"--type=yaml"
            \]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nerdtree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinSize=30
let g:NERDTreeMinimalUI=1
let g:NERDTreeShowLineNumbers=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"tagbar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_compact=1
let g:tagbar_show_linenumbers=1
let g:tagbar_sort=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"undotree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:undotree_WindowLayout=2
let g:undotree_SplitWidth=30

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"calculator
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:VCalc_WindowPosition = 'left'
let g:VCalc_Win_Size = 30

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"peekaboo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:peekaboo_compact=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"goldenratio
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:loaded_golden_ratio = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd ColorScheme * let g:default_comment_fgd = synIDattr(hlID('Comment'),'fg#')
autocmd ColorScheme * highlight QuickScopePrimary      guifg=GreenYellow gui=bold ctermfg=Green
autocmd ColorScheme * highlight QuickScopeSecondary    guifg=DarkOrange  gui=bold ctermfg=Red

augroup noir_customization
    au!
    autocmd ColorScheme 256_noir highlight Number                 guifg=#bcbcbc
    autocmd ColorScheme 256_noir highlight CursorLineNr           gui=italic        guifg=#ff0000 ctermbg=DarkRed ctermfg=LightGray
    autocmd ColorScheme 256_noir highlight LineNr                 guifg=#585858 ctermfg=DarkGray
    autocmd ColorScheme 256_noir highlight SpecialKey             guifg=#ff0000     guibg=#000000
    autocmd ColorScheme 256_noir highlight CursorLine             guibg=#1c1c1c
    autocmd ColorScheme 256_noir highlight LightlineLeft_active_0 guibg=#ff0000     guifg=#ffffff
    autocmd ColorScheme 256_noir highlight Search                 guibg=#5f0000
    autocmd ColorScheme 256_noir highlight ColorColumn guibg=#5f0000 ctermbg=DarkRed
augroup end

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! ToggleComments()
    let comment_fgd = synIDattr(hlID('Comment'), 'fg#')
    let normal_bgd = synIDattr(hlID('Normal'), 'bg#')
    if comment_fgd == normal_bgd
        execute ("highlight Comment guifg=" . g:default_comment_fgd)
        execute ("highlight Todo guifg=" . g:default_comment_fgd)
    else 
        execute ("highlight Comment guifg=" . normal_bgd)
        execute ("highlight Todo guifg=" . normal_bgd)
    endif
endfunction

function! FindAirdropFiles()
    :tabnew
    :execute (":r !find . -type f -name *.c -or -name *.h -or -name *.cpp -or 
                \-name *.hpp")
    :w airdrop_files_list.txt
endfunction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"other settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"generate the ctags file after writing to a .c .cpp or .h file 
au BufWritePost *.c, *.cpp, *.h silent! !ctags -R &
"set the :Explore window size to 30
let g:netrw_winsize=30
"set a bar to color at line 30
set colorcolumn=80
"source the vim
nnoremap <leader>sv :source $MYVIMRC <CR>
nnoremap <space> :b# <CR>
nnoremap <down> :cnext <CR>
nnoremap <up> :cprevious <CR>
nnoremap <left> :tabprevious <CR>
nnoremap <right> :tabnext <CR>
nnoremap <C-right> <C-W>l
nnoremap <C-left> <C-W>h
nnoremap <C-up> <C-W>k
nnoremap <C-down> <C-W>j
set cursorline
autocmd VimEnter * bad $HOME/_vimpluginsettings.vim
autocmd VimEnter * bad $HOME/.vimrc
autocmd VimEnter * bad $HOME/_vimrc
autocmd VimEnter * bad $HOME/README.md
autocmd VimEnter * bad $HOME/.gitconfig
autocmd VimEnter * bad $HOME/Documents/custom_snippets/all.snippets
colorscheme 256_noir
