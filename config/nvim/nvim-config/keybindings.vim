" remap leader to ';'
let mapleader=";"

" Disable line wrapping, set toggle to ';w'
set nowrap
nnoremap <silent> <leader>w :set wrap! wrap?<CR>

" Copy to system clipboard register with ';y' in visual mode
vnoremap <leader>y "+y

" Add rulers at 80 and 120 chars
highlight ColorColumn ctermbg=8
nnoremap <silent> <leader>r :execute "set colorcolumn="
                  \ . (&colorcolumn == "" ? "80,120" : "")<CR>

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
