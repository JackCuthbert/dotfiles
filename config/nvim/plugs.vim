call plug#begin('~/.vim/plugged')

" Language Support
" ----------------

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" TypeScript + JavaScript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jxnblk/vim-mdx-js'
Plug 'pantharshit00/vim-prisma'

" Fish
Plug 'dag/vim-fish'

" Autocomplete/format
" -------------------
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

" Editor
" ------

" File browser
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf.vim'
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

" Codebase search
Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Linting
Plug 'w0rp/ale'

" Themes
Plug 'joshdick/onedark.vim'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

