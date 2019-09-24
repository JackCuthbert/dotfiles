set number ruler list showcmd " common editor wide settings

set mouse=a             " Use the mouse for scroll/selection
set scrolloff=2         " always show 5 lines at the end of the file"

set expandtab           " tabs to spaces"
set tabstop=2           " number of visual spaces per TAB
set softtabstop=2       " number of spaces in tab when editing

set showmatch           " highlight matching [{()}]

" support hot-reloading in parcel/webpack
set backupcopy=yes

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

" Navigation splits
" -----------------

" natural split directions
set splitbelow
set splitright

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
