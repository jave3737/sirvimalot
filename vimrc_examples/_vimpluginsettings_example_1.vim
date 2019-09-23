""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set colorcolumn=81
set cursorline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ULTISNIPS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsSnippetDirectories = [$HOME . "/Documents/custom_snippets"]
let g:UltiSnipsEditSplit          = 'vertical'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"QUICKSCOPE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"INDENTLINES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_char = '●'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"LEADERF
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
"NETWR
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:netrw_winsize=30
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NERDTREE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinSize=30
let g:NERDTreeMinimalUI=1
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeDirArrowExpandable = '→'
let g:NERDTreeDirArrowCollapsible = '↓'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TAGBAR
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_compact=1
let g:tagbar_show_linenumbers=1
let g:tagbar_sort=0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"UNDOTREE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:undotree_WindowLayout=2
let g:undotree_SplitWidth=30
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"CALCULATOR
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:VCalc_WindowPosition = 'left'
let g:VCalc_Win_Size = 30
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"PEEKABOO
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:peekaboo_compact=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"GOLDENRATIO
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:loaded_golden_ratio = 0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"COLORSCHEME SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd ColorScheme * let g:default_comment_fgd = synIDattr(hlID('Comment'),'fg#')
autocmd ColorScheme * highlight QuickScopePrimary      guifg=GreenYellow gui=bold ctermfg=Green
autocmd ColorScheme * highlight QuickScopeSecondary    guifg=DarkOrange  gui=bold ctermfg=Red
augroup noir_customization
    au!
    autocmd ColorScheme 256_noir highlight Number                 guifg=#bcbcbc ctermfg=7
    autocmd ColorScheme 256_noir highlight CursorLineNr           gui=italic        guifg=#ff0000 ctermbg=DarkRed ctermfg=LightGray
    autocmd ColorScheme 256_noir highlight LineNr                 guifg=#585858 ctermfg=DarkGray
    autocmd ColorScheme 256_noir highlight SpecialKey             guifg=#ff0000     guibg=#000000
    autocmd ColorScheme 256_noir highlight CursorLine             guibg=#1c1c1c
    autocmd ColorScheme 256_noir highlight LightlineLeft_active_0 guibg=#ff0000     guifg=#ffffff
    autocmd ColorScheme 256_noir highlight Search                 guibg=#5f0000
    autocmd ColorScheme 256_noir highlight ColorColumn guibg=#5f0000 ctermbg=DarkRed
    autocmd ColorScheme 256_noir highlight Comment ctermfg=8
augroup end
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"FUNCTIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! FindFiles()
    :tabnew
    :execute (":r !find . -type f -name *.c -or -name *.h -or -name *.cpp -or 
                \-name *.hpp -or -name *.txt")
    :w files.txt
endfunction
function! GenerateNewCscope()
    :!find . -type f -name *.c -or -name *.h -or -name *.cpp -or -name *.hpp > cscope.files
    :!cscope -b -i cscope.files -f cscope.out
    :cs add cscope.out
endfunction
autocmd ColorScheme * let g:default_comment_fgd = synIDattr(synIDtrans(hlID("Comment")),"fg")
autocmd ColorScheme * let g:default_normal_bgd = synIDattr(synIDtrans(hlID("Normal")),"bg")
function! ToggleComments()
    let comment_fgd = synIDattr(synIDtrans(hlID("Comment")),"fg")
    let normal_bgd = synIDattr(synIDtrans(hlID("Normal")),"bg")
    if comment_fgd == normal_bgd
        execute ("highlight Comment ctermfg=" . g:default_comment_fgd)
        execute ("highlight Todo ctermfg=" . g:default_comment_fgd)
    else 
        execute ("highlight Comment ctermfg=" . normal_bgd)
        execute ("highlight Todo ctermfg=" . normal_bgd)
    endif
endfunction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"KEY MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>g :execute(":grep! -rin --include \*.h --include \*.c " . expand('<cword>') . " .")<CR>
nnoremap <leader>gg :execute(":grep! -rin --include \*.h --include \*.c " . expand('<cWORD>') . " .")<CR>
nnoremap <leader>sv :source $MYVIMRC <CR>
nnoremap <space> :b# <CR>
nnoremap <up> :copen <CR>
nnoremap <down> :cclose<CR>
nnoremap <left> :cprevious <CR>
nnoremap <right> :cnext <CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"AUTOCOMMAND
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd VimEnter * bad $HOME/_vimpluginsettings.vim
autocmd VimEnter * bad $HOME/.vimrc
autocmd VimEnter * bad $HOME/_vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"COLORSCHEME
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme 256_noir
