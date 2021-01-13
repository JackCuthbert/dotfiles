let g:ale_completion_enabled = 0 " Using Coc.nvim instead

let g:ale_linters = {
\  'javascript': ['eslint'],
\  'typescript': ['tsserver', 'eslint'],
\  'typescriptreact': ['tsserver', 'eslint'],
\  'go': ['gopls']
\}

let g:ale_sign_column_always = 1
