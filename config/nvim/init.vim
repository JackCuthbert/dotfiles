set title
set shell=sh
set number ruler list showcmd " common editor wide settings
set mouse=a " Use the mouse for scroll/selection
set scrolloff=2 " always show 5 lines at the end of the file"
set expandtab " tabs to spaces
set tabstop=2 " number of visual spaces per TAB
set softtabstop=2 " number of spaces in tab when editing
set listchars=tab:▸\ ,extends:›,precedes:‹,nbsp:⎵ " improve invisible character display
set showmatch " highlight matching [{()}]
set backupcopy=yes " support hot-reloading in parcel/webpack

" natural split directions
set splitbelow
set splitright

" remap leader to ';'
let mapleader=";"

" Disable line wrapping, set toggle to ';w'
set nowrap
nnoremap <silent> <leader>w :set wrap! wrap?<CR>

" Add rulers at 80 and 120 chars
highlight ColorColumn ctermbg=8
nnoremap <silent> <leader>r :execute "set colorcolumn="
                  \ . (&colorcolumn == "" ? "80,120" : "")<CR>

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" nvim tree
nnoremap <C-n> :NvimTreeToggle<CR>
let g:nvim_tree_quit_on_open = 1

" Prettier
" let g:prettier#autoformat_config_present = 1
" let g:prettier#autoformat_require_pragma = 0
" let g:prettier#exec_cmd_async = 1

" Grepper
nnoremap <leader>g :Grepper -tool rg<cr>
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" Airline
let g:airline_section_y='' " remove the filetype part
let g:airline_section_b='' " remove the VCS part
let g:airline_skip_empty_sections = 1 " remove separators for empty sections

" auto cursorline
let g:cursorline_timeout = 200
