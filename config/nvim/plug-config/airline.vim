let g:airline_theme='dracula'
let g:airline_powerline_fonts=1
let g:airline#extensions#ale#enabled = 1

" Disable airline angled separators for better line height support
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" Disable percentage indicator
let g:airline_section_z = '%3l/%L:%3v' " default: '%3p%% %3l/%L:%3v'
