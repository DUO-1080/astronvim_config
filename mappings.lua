-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>wa"] = { ":wa<cr>zz", desc = "Save All" },
    ["<leader>w"] = { ":w<cr>zz", desc = "Save File" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    ["<S-CR>"] = { "<ESC>o<c-g>u", desc = "Next Line" },
    ["<C-\\>"] = { "<cmd>ToggleTerm<cr>", desc = "open term" },
    ["<leader>lS"] = { ":TagbarToggle<cr>", desc = "Open Tagbar" },
    ["<A-j>"] = { ":m .+1<CR>==", desc = "Move Line Up" },
    ["<A-k>"] = { ":m .-2<CR>==", desc = "Move Line Down" },
    -- zz = "center current line", cc = "insert mode with indent"
    -- ["o"] = { "o<ESC>", desc = "Next Line and center" },
    -- ["<S-o>"] = { "O<ESC>", desc = "Prev Line and center" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<C-\\>"] = { "<cmd>ToggleTerm<cr>", desc = "open term" },
  },
  i = {
    ["<C-\\>"] = { "<ESC><cmd>ToggleTerm<cr>", desc = "open term" },
    ["<S-CR>"] = { "<ESC>o<c-g>u", desc = "Next Line" },
    ["<CR>"] = { "<c-g>u<cr>", desc = "Next Line" },
    ["<C-S-CR>"] = { "<ESC>$a;<c-g>u<ESC>zzi", desc = "Auto Complete Statement" },
    ["<A-j>"] = { "<ESC>:m .+1<CR>==", desc = "Move Line Up" },
    ["<A-k>"] = { "<ESC>:m .-2<CR>==", desc = "Move Line Down" },
    ["jk"] = { "<ESC>^zz", desc = "ESC and center" },
  },
}
