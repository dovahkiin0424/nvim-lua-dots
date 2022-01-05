require'nvim-treesitter.configs'.setup {
  autopairs = {
    enable = true,
	},
  highlight = {
    enable = true,
    custom_captures = {
    },
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  indent = {
    enable = true
  },
}
