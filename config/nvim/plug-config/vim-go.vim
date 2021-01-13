let g:go_def_mapping_enabled = 0

let g:go_highlight_types = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_fields = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1

" Integrate auto import with coc.nvim
autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
