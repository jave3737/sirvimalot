""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ENABLE WINDOWS BEHAVIOR {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $VIMRUNTIME/mswin.vim
behave mswin 
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"SETTINGS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set nocompatible
set wildmenu
set guioptions=
set ignorecase 
set smartcase
set nowrapscan
set nowrap 
set nobackup
set noswapfile
set splitbelow
set splitright
set sessionoptions-=options
set sessionoptions-=folds
set nohlsearch
set statusline=%t
set laststatus=2
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set textwidth=0
set sessionoptions+=tabpages,globals
set updatetime=100
set noerrorbells
set novisualbell
set number
set tags=./tags,tags;$HOME
set encoding=utf-8
set foldmethod=marker
set cursorline
set colorcolumn=81 
if $TERM == "xterm-256color"
    set t_Co=256
endif
if has('cscope') 
    set cscopetag cscopeverbose
    if has('quickfix')
        set cscopequickfix=s-,c-,d-,i-,t-,e-
    endif
endif 
if has("gui_running") 
    set guifont=Dank_Mono:h15:cANSI:qDRAFT,Consolas:h15:cANSI:qDRAFT
    set belloff=all
endif 
if has("persistent_undo") 
    set undodir=$HOME.\undodir
    set undofile
endif 
if executable('rg') 
    set grepprg=rg\ --vimgrep
elseif executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
else 
    set grepprg=grep\ 
endif
augroup filetypedetect
    au! BufRead,BufNewFile *.c setfiletype cpp 
augroup END
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{ KEYMAPPINGS 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <C-E> <C-E>
inoremap <C-F> <ESC>gUiw`]a
inoremap <C-Y> <C-Y>
nnoremap <C-A> <C-A>
nnoremap <C-B> <C-B>
nnoremap <C-E> 5<C-E> 
nnoremap <C-F> <C-F>
nnoremap <C-X> <C-X>
nnoremap <C-Y> 5<C-Y>
nnoremap <C-down> :lclose<CR>
nnoremap <C-left> :lprevious<CR>
nnoremap <C-right> :lnext<CR>
nnoremap <C-up> :lopen<CR>
nnoremap <down> :cclose<CR>
nnoremap <left> :cprevious<CR>
nnoremap <right> :cnext<CR>
nnoremap <up> :copen<CR>
nnoremap zh 20zh
nnoremap zl 20zl
nnoremap <space> <C-W>
nnoremap <leader>q :help quickref<CR>
nnoremap <leader>f :LeaderfFile<CR>
nnoremap <leader>s :LeaderfBufTag<CR>
nnoremap <leader>d :LeaderfLine<CR>
nnoremap <leader>a :Leaderf rg<CR>
nnoremap <leader>r :NERDTreeToggle<CR>
if executable('rg')
    " general patterns 
    nnoremap <leader>g :execute(":grep! " . expand('<cword>') . " %" )<CR>
    nnoremap <leader>G :execute(":grep! " . expand('<cWORD>') . " %" )<CR>
    " systemverilog, verilog, vhdl 
    nnoremap <leader>gv :execute(":grep! --type=sv --type=verilog --type=vhdl " 
                \. expand('<cword>') )<CR>
    " c, c++
    nnoremap <leader>gc :execute(":grep! --type=c --type=cpp " 
                \. expand('<cword>') )<CR>
    " modelsim related files
    nnoremap <leader>gm :execute(":grep! --glob=*.{do,tcl} " 
                \. expand('<cword>') )<CR>
    "python
    nnoremap <leader>gp :execute(":grep! --type=py "
                \. expand('<cword>') )<CR>
elseif executable('ag')
else 
    nnoremap <leader>g :execute(":grep! -in " . expand('<cword>') . " %" )<CR>
    nnoremap <leader>G :execute(":grep! -in " . expand('<cWORD>') . " %" )<CR>
    nnoremap <leader>gc :execute(":grep! -rin --include \*.h --include \*.c "
                \. expand('<cword>') . " .")<CR>
endif
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{ QUICK ACCESS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd VimEnter * bad $HOME/_vimrc
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{ COLORSCHEME SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd ColorScheme * let g:default_comment_fgd = 
            \synIDattr(hlID('Comment'),'fg#')
autocmd ColorScheme * let g:default_comment_fgd = 
            \synIDattr(synIDtrans(hlID("Comment")),"fg")
autocmd ColorScheme * let g:default_normal_bgd = 
            \synIDattr(synIDtrans(hlID("Normal")),"bg")
augroup shades_of_purple 
    au!
    autocmd ColorScheme shades_of_purple let g:shades_of_purple = 1
    autocmd ColorScheme shades_of_purple let g:lightline = 
                \{'colorscheme':'shades_of_purple'}
augroup end 
augroup noir 
    au!
    autocmd ColorScheme 256_noir highlight QuickScopePrimary 
                \guifg=GreenYellow gui=bold ctermfg=Green
    autocmd ColorScheme 256_noir highlight QuickScopeSecondary    
                \guifg=DarkOrange gui=bold ctermfg=Red
    autocmd ColorScheme 256_noir highlight Number                 
                \guifg=#bcbcbc ctermfg=7
    autocmd ColorScheme 256_noir highlight CursorLineNr           
                \gui=italic guifg=#ff0000 ctermbg=DarkRed ctermfg=LightGray
    autocmd ColorScheme 256_noir highlight LineNr                 
                \guifg=#585858 ctermfg=DarkGray
    autocmd ColorScheme 256_noir highlight SpecialKey             
                \guifg=#ff0000 guibg=#000000
    autocmd ColorScheme 256_noir highlight CursorLine             
                \guibg=#1c1c1c
    autocmd ColorScheme 256_noir highlight Search                 
                \guibg=#5f0000
    autocmd ColorScheme 256_noir highlight ColorColumn 
                \guibg=#5f0000 ctermbg=DarkRed
    autocmd ColorScheme 256_noir highlight Comment 
                \ctermfg=8
augroup end 
augroup fahrenheit 
    au! 
    autocmd ColorScheme fahrenheit highlight QuickScopePrimary      
                \guifg=GreenYellow gui=bold ctermfg=Green
    autocmd ColorScheme fahrenheit highlight QuickScopeSecondary    
                \guifg=DarkOrange  gui=bold ctermfg=Red
    autocmd ColorScheme fahrenheit highlight ColorColumn 
                \guibg=#5f0000 ctermbg=DarkRed
augroup end 
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{ FUNCTIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! FindFiles() 
    :tabnew
    :execute (":r !find . -type f -name *.c -or -name *.h -or -name *.cpp -or 
                \-name *.hpp -or -name *.txt")
    :w files.txt
endfunction 
function! GenerateNewCscope() 
    :!find . -type f -name *.c -or -name *.h -or -name *.cpp -or -name *.hpp > 
                \cscope.files
    :!cscope -b -i cscope.files -f cscope.out
    :cs add cscope.out
endfunction 
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
function! SwapBackslash() 
    :s/\\/\//g
endfunction 
function! SwapForwardslash() 
    :s/\//\\/g
endfunction 
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{ ENABLE PLUGINS 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#infect()
filetype plugin indent on
packloadall
silent! helptags ALL
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{ PLUGIN SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:Lf_WindowHeight = 0.2
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
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_DefaultMode='NameOnly'
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeShowHidden=1
let g:NERDTreeWinSize=30
let g:NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable="→"
let g:NERDTreeDirArrowCollapsable="↓"
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:netrw_winsize=30
let g:VCalc_WindowPosition = 'left'
let g:VCalc_Win_Size = 30
colorscheme fahrenheit
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{ MAXIMIZE THE WINDOW
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    au GUIEnter * simalt ~x
endif
"}}}
