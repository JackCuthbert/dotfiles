" 256 colours
let base16colorspace=256

" Colors 🌈
colorscheme dracula

" Don't lose transparency
hi Normal ctermbg=none
highlight NonText ctermbg=none

" Airline
let g:airline_theme='dracula'
let g:airline_powerline_fonts=1

" Disable airline angled separators for better line height support
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" Indentline
let g:indentLine_color_term = 8
let g:indentLine_char = '┆'
