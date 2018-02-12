call plug#begin('~/.vim/plugged')

" File browser
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'travisjeffery/vim-auto-mkdir'

" Syntax
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'

" Fixes
Plug 'ntpeters/vim-better-whitespace'

" Editor
Plug 'editorconfig/editorconfig-vim'
Plug 'Yggdroot/indentLine'

" Tmux
Plug 'sjl/vitality.vim'
Plug 'vim-utils/vim-husk'

" Search
Plug 'mhinz/vim-grepper'

" Git
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'

" Linting
Plug 'w0rp/ale'

call plug#end()
