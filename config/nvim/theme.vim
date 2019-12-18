" Theme options
let g:lightline = { 'colorscheme': 'challenger_deep'}
if has('nvim') || has('termguicolors')
  set termguicolors
endif

" Colors
colorscheme challenger_deep

" Don't let theme override background colours
" NOTE: This must be after `colorscheme` call
highlight Normal guibg=none
highlight NonText guibg=none
