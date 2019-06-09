"Custom===================================================================================
set nobackup
set noswapfile
set wildignore=*.o,*.jpg,*.png,*.make,*.bin,*.pyc,

let g:current_session = ''
function! Save_session()
    execute 'mksession! ' . g:current_session
endfunction

function! Airdrop()
    :let l:project_name = 'airdrop'
    :let g:current_session = $HOME . '\vimtemp\' . l:project_name .'_session.vim'
    :execute 'source ' . g:current_session 

    :set guifont=Dank_Mono:h14:cANSI:qDRAFT
    :colorscheme fairyfloss

    :set textwidth=80
    :set tabstop=4
    :set shiftwidth=4
    :set softtabstop=4
    :set expandtab
endfunction

function! Mtb()
    :let l:project_name = 'mtb'
    :let g:current_session = $HOME . '\vimtemp\' . l:project_name .'_session.vim'
    :execute 'source ' . g:current_session 

    :set guifont=Fira_Code:h14:cANSI:qDRAFT
    :colorscheme candy 
    :cd $HOME\Documents\
endfunction

function! Mod_micro_python()
    :let l:project_name = 'mod_micro_python'
    :let g:current_session = $HOME . '\vimtemp\' . l:project_name .'_session.vim'
    :execute 'source ' . g:current_session

    :set guifont=Monoid:h14:cANSI:qDRAFT
    :colorscheme oceandeep
endfunction

function! Mod_micro_stm()
    :let l:project_name = 'mod_micro_stm'
    :let g:current_session = $HOME . '\vimtemp\' . l:project_name .'_session.vim'
    :execute 'source ' . g:current_session

    :set guifont=Consolas:h14:cANSI:qDRAFT
    :colorscheme inkpot 
endfunction

function! Eth_inbox() 
    :let l:project_name = 'eth_inbox'
    :let g:current_session = $HOME . '\vimtemp\' . l:project_name .'_session.vim'
    :execute 'source ' . g:current_session

    :set guifont=NanumGothicCoding:h14:cANSI:qDRAFT
    :colorscheme blayu 
endfunction

map <F1>    :call Save_session()            <CR>
map <F2>    :call Airdrop()                 <CR>
map <F3>    :call Mtb()                     <CR>
map <F4>    :call Mod_micro_python()        <CR>
map <F5>    :call Mod_micro_stm()           <CR>
map <F6>    :call Eth_inbox()               <CR>

