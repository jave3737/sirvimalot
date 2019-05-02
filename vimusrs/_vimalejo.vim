"Custom===================================================================================
set wildignore=*.o,*.jpg,*.png,*.make,*.bin,*.pyc,

let g:current_session = ''
set guifont=Dank_Mono:h14:cANSI:qDRAFT

function! Save_session()
    execute 'mksession! ' . g:current_session
endfunction

function! Airdrop()
    :let l:project_name = 'airdrop'
    :let g:current_session = $HOME . '\vimtemp\' . l:project_name .'_session.vim'
    :execute 'source ' . g:current_session 
    
    :set titlestring=AIRDROP
    :set textwidth=80
    :set tabstop=4
    :set shiftwidth=4
    :set softtabstop=4
    :set expandtab
endfunction

function! Mod_micro_python()
    :let l:project_name = 'mod_micro_python'
    :let g:current_session = $HOME . '\vimtemp\' . l:project_name .'_session.vim'
    :execute 'source ' . g:current_session
endfunction

function! Mod_micro_stm()
    :let l:project_name = 'mod_micro_stm'
    :let g:current_session = $HOME . '\vimtemp\' . l:project_name .'_session.vim'
    :execute 'source ' . g:current_session
endfunction

function! Mod_micro_fpga()
    :let l:project_name = 'mod_micro_fpga'
    :let g:current_session = $HOME . '\vimtemp\' . l:project_name .'_session.vim'
    :execute 'source ' . g:current_session
endfunction

map <F1>    :call Save_session()     <CR>
map <F2>    :call Airdrop()          <CR>
map <F4>    :call Mod_micro_python() <CR>
map <F5>    :call Mod_micro_stm()    <CR>
map <F6>    :call Mod_micro_fpga()   <CR>


