return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- vsocde主题 https://github.com/Mofiqul/vscode.nvim
  {
    "Mofiqul/vscode.nvim",
    name = "vscode",
    config = function()
      require("vscode").setup {}
    end,
  },
  -- https://github.com/catppuccin/nvim
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup {}
    end,
  },
}
