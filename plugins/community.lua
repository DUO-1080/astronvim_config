return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  { import = "astrocommunity.colorscheme.everforest" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.search.nvim-hlslens" },
  { import = "astrocommunity.git.git-blame-nvim" },
  { import = "astrocommunity.scrolling.mini-animate" },
  { import = "astrocommunity.bars-and-lines.heirline-mode-text-statusline" },
  { import = "astrocommunity.bars-and-lines.heirline-vscode-winbar" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.completion.cmp-cmdline" },
  -- { import = "astrocommunity.completion.codeium-vim" },
}
