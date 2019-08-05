call plug#begin('~/.vim/plugged')

" File browser
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'travisjeffery/vim-auto-mkdir'

" Motion
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'

" Language Support
" ----------------

" TypeScript + JavaScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Rust
Plug 'rust-lang/rust.vim'

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Editor
" ------

" Support editor config files
Plug 'editorconfig/editorconfig-vim'

" Show line indents
Plug 'Yggdroot/indentLine'

" Highlight and strip whitespace
Plug 'ntpeters/vim-better-whitespace'

" Search
Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Source browsing
Plug 'majutsushi/tagbar'

" Linting
Plug 'w0rp/ale'

" Themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }


call plug#end()

