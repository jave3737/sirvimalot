let g:current_user = "default"

if g:current_user == "default"
    source $HOME/vimusrs/_vimjennifer.vim
    nnoremap <leader>ev :vsplit $HOME/vimusrs/_vimdefault.vim <cr>
elseif g:current_user == "ajm"
    source $HOME/vimusrs/_vimajm.vim
    nnoremap <leader>ev :vsplit $HOME/vimusrs/_vimajm.vim <cr>
elseif g:current_user == "Jennifer"
    source $HOME/vimusrs/_vimjennifer.vim
    nnoremap <leader>ev :vsplit $HOME/vimusrs/_vimjennifer.vim <cr>
endif
