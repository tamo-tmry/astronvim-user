-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    -- resize
    ["<A-l>"] = { "<cmd>vertical resize +2<CR>" },
    ["<A-h>"] = { "<cmd>vertical resize -2<CR>" },
    ["<A-j>"] = { "<cmd>resize -2<CR>" },
    ["<A-k>"] = { "<cmd>resize +2<CR>" },
    ["<A-=>"] = { "<C-w>=", desc = "Resize equal" },
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<Leader>gn"] = { "<Cmd>Neogit<CR>", desc = "Neogit" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<A-i>"] = { "<cmd>ToggleTerm direction=float<cr>", desc = "Toggle floating terminal" },
    ["<A-H>"] = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "Toggle horizontal terminal" },
    ["<A-V>"] = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", desc = "Toggle vertical terminal" },
    ["<leader>;"] = {
      function() require("telescope.builtin").current_buffer_fuzzy_find() end,
      desc = "Fuzzy find lines",
    },
    ["<leader>fd"] = {
      function() require("telescope.builtin").lsp_document_symbols() end,
      desc = "Find symbols in current file",
    },
    ["<leader>ss"] = {
      function() require("telescope.builtin").grep_string() end,
      desc = "Search current word on cursor",
    },
    ["<leader>ma"] = {
      function() require("telescope").extensions.vim_bookmarks.all() end,
      desc = "Show all bookmarks",
    },
    ["<leader>mc"] = {
      function() require("telescope").extensions.vim_bookmarks.current_file() end,
      desc = "Show current file bookmarks",
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<A-i>"] = { "<cmd>ToggleTerm direction=float<cr>", desc = "toggle floating terminal" },
    ["<A-H>"] = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "toggle horizontal terminal" },
    ["<A-V>"] = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", desc = "toggle vertical terminal" },
  },
}
