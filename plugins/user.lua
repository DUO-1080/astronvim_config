return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("indent_blankline").setup {
        show_current_context = false,
      }
    end,
  },
  {
    "p00f/clangd_extensions.nvim",
    event = "BufRead",
    config = function()
      require("clangd_extensions").setup {
        inlay_hints = {},
      }
    end,
  },
  {
    "preservim/tagbar",
    event = "BufRead",
  },
}
