require("bufferline").setup({
  options = {
    mode = "biffers",
    diagnostics = "nvim_lsp",
    show_buffer_close_icons = true,
    show_close_icon = false,
    separator_style = "thin",
  },
  -- highlights = {
  --   fill = { bg = "NONE" },
  --   background = { bg = "NONE" },
  --   tab = { bg = "NONE" },
  --   tab_selected = { bg = "NONE" },
  --   tab_close = { bg = "NONE" },
  --   buffer_selected = { bg = "NONE" },
  --   buffer_visible = { bg = "NONE" },
  --   close_button = { bg = "NONE" },
  --   close_button_visible = { bg = "NONE" },
  --   close_button_selected = { bg = "NONE" },
  --   separator = { bg = "NONE" },
  --   separator_selected = { bg = "NONE" },
  --   separator_visible = { bg = "NONE" },
  -- },
  offsets = {{
    filetype = "nvimtree",
    text = "File Explorer",
    highlight = "Directory",
    separator = true,
  }},
})

