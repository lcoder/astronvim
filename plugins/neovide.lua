if vim.g.neovide then
  -- https://neovide.dev/configuration.html#macos-alt-is-meta
  vim.g.neovide_input_macos_alt_is_meta = true

  vim.g.neovide_input_use_logo = true
  vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })

  -- vim.opt.guifont = { "JetBrains Mono", ":h18" }
  -- vim.o.guifont = "JetBrains Mono:h16"
  vim.o.guifont = "Source Code Pro:h20"
  vim.g.neovide_hide_mouse_when_typing = true
  vim.opt.linespace = 1
  vim.g.neovide_fullscreen = false
  vim.g.neovide_cursor_animation_length = 0.05
  vim.g.neovide_cursor_trail_size = 0.2
  vim.g.neovide_cursor_animate_in_insert_mode = true
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
end

return {}
