local cmp = require'cmp'
local lspkind = require'lspkind'

cmp.setup {
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm { select = true },
    -- Start completion with C-Space to have it truly clean-up
    ["<C-e>"] = cmp.mapping.abort(),

    -- Insert instead of Select so you don't go away at `stopinsert` after `CursorHoldI`
    -- @TODOUA: I want to be able to `Select` without `stopinsert` killing it (& keep `stopinsert`)
    ["<Down>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert },
    ["<Up>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
  },
  experimental = {
    ghost_text = true,
  },
  documentation = {
    border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
  },
  sources = {
    -- 'crates' is lazy loaded
    { name = "nvim_lsp" },
    { name = "nvim_lua" },
    { name = "treesitter" },
    { name = "vsnip" },
    { name = "path" },
    {
      name = "buffer",
      option = {
        get_bufnrs = function()
          return vim.api.nvim_list_bufs()
        end,
      },
    },
    { name = "spell" },
  },
  formatting = {
	fields =  { "abbr", "menu", "kind"},
    format = function(entry, vim_item)
      vim_item.kind = string.format("%s", lspkind.presets.default[vim_item.kind], vim_item.kind)
      vim_item.menu = ({
        nvim_lsp = "LSP",
        nvim_lua = "LUA",
        treesitter = "",
        path = "ﱮ",
        buffer = "BUFF",
        zsh = "",
        vsnip = "VSNIP",
        spell = "SPELL",
      })[entry.source.name]

      return vim_item
    end,
  },
}
