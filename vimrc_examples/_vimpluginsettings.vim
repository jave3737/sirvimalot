nnoremap <C-W><C-]> :PreviewTag<CR>
nnoremap <leader>f :LeaderfFile<CR>
nnoremap <leader>d :LeaderfBufTag<CR>
nnoremap <leader>s :Leaderf rg<CR>
nnoremap <leader>r :TagbarOpenAutoClose<CR>
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>g :execute(":AsyncRun! -strip rg --vimgrep --type=c " . expand('<cword>'))<CR>
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
let g:Lf_PreviewResult = {'BufTag':0}
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_DefaultMode='NameOnly'
let g:Lf_ShortcutF=''
let g:Lf_ShortcutB=''
let g:Lf_Ctags=$HOME . '/executables/ctags.exe'
let g:Lf_HideHelp=1
let g:context_enabled=0
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeShowHidden=1
let g:NERDTreeWinSize=30
let g:NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable="→"
let g:NERDTreeDirArrowCollapsable="↓"
let g:gutentags_ctags_executable=$HOME . '/executables/ctags.exe'
let g:VCalc_Win_Size = 30
let g:VCalc_WindowPosition = 'left'
let g:tagbar_left = 1 
let g:tagbar_width = 30
let g:tagbar_compact = 1
let g:tagbar_show_linenumbers = 1
let g:tagbar_sort = 0
let g:peekaboo_window='vert bo 100new'
let g:tagbar_iconchars = ['→','↓']
let g:lightline = {'active':{'left':[['mode','paste'],['gitbranch','readonly','filename','modified']]},'component_function':{'gitbranch':'fugitive#head'},}

augroup fahrenheit_custom
    au!
    autocmd ColorScheme fahrenheit highlight QuickScopePrimary guifg=GreenYellow gui=bold ctermfg=Green
    autocmd ColorScheme fahrenheit highlight QuickScopeSecondary guifg=DarkOrange gui=bold ctermfg=Red
    autocmd ColorScheme fahrenheit highlight ColorColumn guibg=#5f0000 ctermbg=DarkRed
augroup end
colorscheme fahrenheit
