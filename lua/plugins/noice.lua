require("noice").setup({
  lsp = {
    progress = { enabled = true },
    hover = { enabled = true },
    signature = { enabled = true },
  },
  presets = {
    bottom_search = true,         -- move search cmdline to bottom
    command_palette = true,       -- cmdline + popupmenu together
    long_message_to_split = true, -- send long messages to split
    inc_rename = false,
    lsp_doc_border = true,
  },
})

