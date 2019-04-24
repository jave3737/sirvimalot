let g:current_user = "Alejo"

if g:current_user == "Jennifer"
    source $HOME/vimusrs/_vimjennifer.vim
    nnoremap <leader>evv :vsplit $HOME/vimusrs/_vimjennifer.vim <cr>
elseif g:current_user == "Alejo"
    source $HOME/vimusrs/_vimalejo.vim
    nnoremap <leader>evv :vsplit $HOME/vimusrs/_vimalejo.vim <cr>
endif
