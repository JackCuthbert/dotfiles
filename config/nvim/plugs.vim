" TODO: Migration to packer
call plug#begin('~/.vim/plugged')

" syntax
Plug 'editorconfig/editorconfig-vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" nav
Plug 'ahmedkhalf/project.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'yamatsum/nvim-cursorline'

" completion
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" theme
Plug 'navarasu/onedark.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

