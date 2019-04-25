let g:current_user = "default"

if g:current_user == "default"
    source $HOME/vimusrs/_vimjennifer.vim
    nnoremap <leader>evvv :vsplit $HOME/vimusrs/_vimdefault.vim <cr>
elseif g:current_user == "Alejo"
    source $HOME/vimusrs/_vimalejo.vim
    nnoremap <leader>evvv :vsplit $HOME/vimusrs/_vimalejo.vim <cr>
elseif g:current_user == "Jennifer"
    source $HOME/vimusrs/_vimjennifer.vim
    nnoremap <leader>evvv :vsplit $HOME/vimusrs/_vimjennifer.vim <cr>
endif
