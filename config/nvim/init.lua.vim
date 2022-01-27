lua << EOF
require('onedark').load()
require('gitsigns').setup()
require("project_nvim").setup()
require('telescope').load_extension('projects')

require("nvim-tree").setup {
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true
  },
}


require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
  },
}
EOF
