let NERDTreeShowHidden=1
let g:NERDTreeChDirMode=2
let NERDTreeIgnore = ['node_modules', '.git', 'tmp', '.DS_Store']
let g:ctrlp_dont_split = 'nerdtree'

" toggle Nerdtree and open the current folder
function! ToggleNerdTree()
    if exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1
        execute ":NERDTreeClose"
    else
        execute ":NERDTreeFind"
    endif
endfunction

" Map the toggle to Ctrl-N custom function
map <C-n> :call ToggleNerdTree()<CR>
