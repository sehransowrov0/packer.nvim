-- Sonokai config
vim.g.sonokai_style = "andromeda"            -- style (default/andromeda/shusia/maia/espresso/atlantis)
vim.g.sonokai_enable_italic = 1              -- italics
vim.g.sonokai_disable_italic_comment = 1     -- disable italic comments
vim.g.sonokai_transparent_background = 1     -- transparent background

-- apply colorscheme safely
local ok, _ = pcall(vim.cmd, "colorscheme sonokai")
if not ok then
  vim.notify("Sonokai not found! Run :PackerSync", vim.log.levels.WARN)
end

