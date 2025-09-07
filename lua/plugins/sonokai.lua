-- Sonokai config
vim.g.sonokai_style = "andromeda"
vim.g.sonokai_enable_italic = 1
vim.g.sonokai_disable_italic_comment = 1
vim.g.sonokai_transparent_background = 1

-- apply colorscheme safely
local ok, _ = pcall(vim.cmd, "colorscheme sonokai")
if not ok then
  vim.notify("Sonokai not found! Run :PackerSync", vim.log.levels.WARN)
end

-- make bufferline background transparent
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "BufferLineFill", { bg = "none" })
    vim.api.nvim_set_hl(0, "BufferLineBackground", { bg = "none" })
    vim.api.nvim_set_hl(0, "BufferLineBufferSelected", { bg = "none" })
    vim.api.nvim_set_hl(0, "BufferLineBufferVisible", { bg = "none" })
    vim.api.nvim_set_hl(0, "BufferLineTab", { bg = "none" })
    vim.api.nvim_set_hl(0, "BufferLineTabSelected", { bg = "none" })
    vim.api.nvim_set_hl(0, "BufferLineTabClose", { bg = "none" })
    vim.api.nvim_set_hl(0, "BufferLineSeparator", { bg = "none" })
    vim.api.nvim_set_hl(0, "BufferLineSeparatorSelected", { bg = "none" })
    vim.api.nvim_set_hl(0, "BufferLineSeparatorVisible", { bg = "none" })
  end,
})

