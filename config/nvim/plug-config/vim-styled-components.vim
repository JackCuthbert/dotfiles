" https://github.com/styled-components/vim-styled-components/issues/64
" https://github.com/styled-components/vim-styled-components/commit/9de1e456a08b787d719a4b4158ae79fd4dc6fd96
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
