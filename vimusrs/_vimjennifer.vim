"  GLOBAL VARIABLES
"  ===========================================

"  Airdrop
"  ----------------------------------
let g:current_airdrop_repo = '12-yaml-editing'
let g:airdrop_session      = 'vimtemp\airdrop_session.vim'

"  Modular Microfluidics
"  ----------------------------------
let g:modmicro_stm32_ctrl  = 'stm32_ctrl'
let g:modmicro_python      = 'python_stm32_console'

"  EC544 Final Project 
"  ----------------------------------
let g:ec544_voting_session  = 'vimtemp\ec544_session.vim'

" TOOLBAR
set guioptions=m

            

" Function to set themes for different sessions
function! Default_env()
    :set guifont:Dank_Mono:h14:cANSI:qDRAFT
    :cd $HOME
    :colorscheme desert 
endfunction

" Set prettyness for Airdrop
function! Airdrop()
    :set guifont=Dank_Mono:h14:cANSI:qDRAFT
    :colorscheme desert 
    :set textwidth=80
    :execute 'cd '. $AIRDROP_GIT . '\' . g:current_airdrop_repo
    :execute 'source ' . $HOME . '\'. g:airdrop_session  
    :set titlestring=Airdrop
    :set tabstop=4
    :set shiftwidth=4
    :set softtabstop=4
    :set expandtab
endfunction

" Set prettyness for ModMicro
function! ModMicro()
    :set guifont=Dank_Mono:h14:cANSI:qDRAFT
    :colorscheme oceandeep
    :set textwidth=80
    :execute 'cd '. $MODMICRO_GIT . '\' . g:modmicro_stm32_ctrl 
    :set titlestring='ModularMicrofluidics'
    :set tabstop=4
    :set shiftwidth=4
    :set softtabstop=4
    :set expandtab
endfunction

" Set prettyness for ModMicro
function! EC544()
    :set guifont=Dank_Mono:h14:cANSI:qDRAFT
    :colorscheme fairyfloss 
    :set textwidth=80
    :execute 'cd '. $DOCS . '\Grad School\classes\ec544\'
    :execute 'source ' . $HOME . '\'. g:ec544_voting_session
    :set titlestring='EC544'
    :set tabstop=4
    :set shiftwidth=4
    :set softtabstop=4
    :set expandtab
endfunction


" Map certain functions to certain keys
map <F1> :call Airdrop() <CR>
map <F2> :call ModMicro() <CR>
map <F3> :call EC544()    <CR>

