call plug#begin('~/.vim/plugged')

" Language Support
" ----------------

" TypeScript + JavaScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" MDX
Plug 'jxnblk/vim-mdx-js'

" Rust
Plug 'rust-lang/rust.vim'

" Autocomplete
" ------------
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Editor
" ------

" File browser
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'travisjeffery/vim-auto-mkdir'
Plug 'Asheq/close-buffers.vim'

" Motion
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'

" Support editor config files
Plug 'editorconfig/editorconfig-vim'

" Highlight and strip whitespace
Plug 'ntpeters/vim-better-whitespace'

" Search
Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Linting
Plug 'w0rp/ale'

" Themes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'itchyny/lightline.vim'

" Non-editor things
" -----------------

" Preview markdown files in browser with :MarkdownPreview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

call plug#end()

