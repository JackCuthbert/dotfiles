set number ruler list showcmd " common editor wide settings

set mouse=a             " Use the mouse for scroll/selection
set scrolloff=2         " always show 5 lines at the end of the file"

set expandtab           " tabs to spaces"
set tabstop=2           " number of visual spaces per TAB
set softtabstop=2       " number of spaces in tab when editing

set showmatch           " highlight matching [{()}]

" remap leader to ';'
let mapleader=";"

" Disable line wrapping, set toggle to ';w'
set nowrap
nnoremap <silent> <leader>w :set wrap! wrap?<CR>
