nnoremap <leader>g :Grepper -tool rg<cr>

nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" Optional. The default behaviour should work for most users.
let g:grepper               = {}
let g:grepper.tools         = ['rg', 'grep', 'git']
let g:grepper.jump          = 1
