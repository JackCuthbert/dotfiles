" Colors
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-default-dark

" Theme options
" let g:lightline = { 'colorscheme': '16color'}
if has('nvim') || has('termguicolors')
  set termguicolors
endif


" Don't let theme override background colours
" NOTE: This must be after `colorscheme` call
highlight Normal guibg=none
highlight NonText guibg=none
