-- mini.icons setup
local status_ok, mini_icons = pcall(require, "mini.icons")
if not status_ok then
  return
end

mini_icons.setup({
  -- style = "ascii", -- uncomment if you don’t want Nerd Font icons
  -- You can also override per filetype if needed:
  -- filetype = {
  --   lua = { glyph = "", hl = "MiniIconsBlue" },
  -- },
})

-- Compatibility with plugins that expect nvim-web-devicons
package.preload["nvim-web-devicons"] = function()
  mini_icons.mock_nvim_web_devicons()
  return package.loaded["nvim-web-devicons"]
end

