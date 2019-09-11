let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeIgnore = ['node_modules', '.git', 'tmp', '.DS_Store']

let g:NERDTreeChDirMode=2
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
