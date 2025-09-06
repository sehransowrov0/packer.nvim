local ok, nvimtree = pcall(require, "nvim-tree")
if not ok then return end

nvimtree.setup({
  view = { width = 30, side = "left" },
  renderer = { group_empty = true },
  filters = { dotfiles = false },
})

-- keymap
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })

-- custom highlights
vim.cmd [[
  highlight NvimTreeFolderName guifg=#7aa2f7
  highlight NvimTreeOpenedFolderName guifg=#7aa2f7
  highlight NvimTreeEmptyFolderName guifg=#7aa2f7
  highlight NvimTreeRootFolder guifg=#9ece6a
  highlight NvimTreeExecFile guifg=#9ece6a
  highlight NvimTreeSpecialFile guifg=#bb9af7
  highlight NvimTreeIndentMarker guifg=#565f89
]]

