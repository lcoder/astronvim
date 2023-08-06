-- <TAB> cursor jumping problem
-- https://www.reddit.com/r/neovim/comments/z9os8x/strange_behaviour_cursor_jumping_with_tabkey


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
    -- toggle lsp symbols outline
    ["<leader>lo"] = { function() require("aerial").toggle() end, desc = "Symbols outline" },
   -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },

  i = {
    -- emacs 按键绑定 https://github.com/sei40kr/nvimacs
    ["<C-b>"] = { "<Left>", desc = "backward-char" },
    ["<C-f>"] = { "<Right>", desc = "forward-char" },
    ["<C-p>"] = { "<Up>", desc = "previous-line" },
    ["<C-n>"] = { "<Down>", desc = "next-line" },
    ["<C-a>"] = { "<Home>", desc = "move-beginning-of-line" },
    ["<C-e>"] = { "<End>", desc = "move-end-of-line" },
    ["<C-d>"] = { "<Del>", desc = "delete-char" },
  }
}
