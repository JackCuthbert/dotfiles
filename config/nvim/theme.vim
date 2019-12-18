" Theme options
let g:lightline = { 'colorscheme': 'challenger_deep'}
if has('nvim') || has('termguicolors')
  set termguicolors
endif

" Don't lose transparency
hi Normal ctermbg=none
highlight NonText ctermbg=none

" Colors
colorscheme challenger_deep
