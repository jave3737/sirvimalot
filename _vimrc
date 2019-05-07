""""""""""""""""""""""""""""""""""""""""""""""""""
"BEHAVIOR
""""""""""""""""""""""""""""""""""""""""""""""""""
source $VIMRUNTIME/mswin.vim
behave mswin 
au GUIEnter * simalt ~x
colorscheme desert    
set grepprg=grep\ 
syntax on
""""""""""""""""""""""""""""""""""""""""""""""""""
"TERMINAL SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=Dank_Mono:h8:cANSI
set wildmenu
set path+=**
set guioptions=
set ignorecase 
set nowrap 
set nobackup
set noswapfile
set noundofile
set splitbelow
set splitright
set sessionoptions-=options
set sessionoptions-=folds
set hlsearch
set statusline=%t
set laststatus=2
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set sessionoptions+=tabpages,globals
set nocompatible
set updatetime=100
set noerrorbells
set novisualbell
set belloff=all
set showmatch
set ruler
""""""""""""""""""""""""""""""""""""""""""""""""""
"AUTO 
""""""""""""""""""""""""""""""""""""""""""""""""""
set number relativenumber 
:augroup numbertoggle 
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
""""""""""""""""""""""""""""""""""""""""""""""""""
"KEY MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>ev  :vsplit $MYVIMRC <cr>
nnoremap <leader>evv :vsplit $HOME/vimusrs/_vimcurrusr.vim <cr>
nnoremap <leader>sv  :source $MYVIMRC <cr>
nnoremap <leader>q   :copen<CR>
nnoremap <leader>qq  :cclose<CR>
nnoremap <leader>v   :execute "vimgrep /" . expand("<cword>") . "/gj " .expand("%") <CR>
nnoremap <leader>g   :execute "grep -nH " . expand("<cword>") . " " .expand("%") <CR>
nnoremap <C-Left>    :tabprevious<CR>
nnoremap <C-Right>   :tabnext<CR>
nnoremap <C-t>       a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
inoremap <C-t>       <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
nnoremap <C-Down>    :cnext<CR>
nnoremap <C-Up>      :cprevious<CR>
nnoremap _           5<C-w><<CR>
nnoremap +           5<C-w>><CR>
nnoremap -           5<C-w>-<CR>
nnoremap =           5<C-w>+<CR>
noremap  J           5j
vnoremap J           5j
noremap  K           5k
vnoremap K           5k
noremap  L           5l
vnoremap L           5l
noremap  H           5h
vnoremap H           5h
imap     jj          <Esc>:w<CR>
nnoremap B           ^
nnoremap E           $
nnoremap $           <nop>
nnoremap ^           <nop>
nnoremap gV          `[v`]
xmap     ga          <Plug>(EasyAlign)
nmap     ga          <Plug>(EasyAlign)
inoremap "           ""<left>
inoremap '           ''<left>
inoremap (           ()<left>
inoremap [           []<left>
inoremap {           {}<left>

""""""""""""""""""""""""""""""""""""""""""""""""""
"SNIPPETS
""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap ,csi<tab> <esc>:read $HOME/vimfiles/custom_snippets/cpp/statement_if_else.txt          <CR>
inoremap ,csw<tab> <esc>:read $HOME/vimfiles/custom_snippets/cpp/statement_while.txt            <CR>
inoremap ,csd<tab> <esc>:read $HOME/vimfiles/custom_snippets/cpp/statement_do_while.txt         <CR>
inoremap ,csf<tab> <esc>:read $HOME/vimfiles/custom_snippets/cpp/statement_for.txt              <CR>
inoremap ,ccs<tab> <esc>:read $HOME/vimfiles/custom_snippets/cpp/comments_section.txt           <CR>
inoremap ,ccf<tab> <esc>:read $HOME/vimfiles/custom_snippets/cpp/comments_file_header.txt       <CR>
inoremap ,cih<tab> <esc>:read $HOME/vimfiles/custom_snippets/cpp/include_header.txt             <CR>
inoremap ,cis<tab> <esc>:read $HOME/vimfiles/custom_snippets/cpp/include_standard_header.txt    <CR>

inoremap ,vtm<tab> <esc>:read $HOME/vimfiles/custom_snippets/verilog/template_module.txt        <CR>
inoremap ,vts<tab> <esc>:read $HOME/vimfiles/custom_snippets/verilog/template_state_machine.txt <CR>
inoremap ,vtt<tab> <esc>:read $HOME/vimfiles/custom_snippets/verilog/template_testbench.txt     <CR>
inoremap ,vsi<tab> <esc>:read $HOME/vimfiles/custom_snippets/verilog/statement_if_else.txt      <CR>

inoremap ,Vte<tab> <esc>:read $HOME/vimfiles/custom_snippets/vhdl/template_entity.txt <CR>
""""""""""""""""""""""""""""""""""""""""""""""""""
"PLUGINS 
""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#infect()
filetype plugin indent on
""""""""""""""""""""""""""""""""""""""""""""""""""
"CUSTOM 
""""""""""""""""""""""""""""""""""""""""""""""""""
source $HOME/vimusrs/_vimcurrusr.vim
