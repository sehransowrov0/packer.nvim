-- lua/plugins/fzf.lua

local status_ok, fzf = pcall(require, "fzf-lua")
if not status_ok then
  return
end

fzf.setup({
  winopts = {
    height = 0.85,
    width = 0.80,
    row = 0.30,
    col = 0.50,
    border = "rounded",
    fullscreen = false,
    preview = {
      layout = "vertical", -- can be 'vertical', 'horizontal', 'flex'
      vertical = "down:45%", -- preview height
      horizontal = "right:60%", -- preview width
      border = "noborder",
    },
  },
  files = {
    previewer = true,
    prompt = "Files❯ ",
  },
  grep = {
    prompt = "Rg❯ ",
    input_prompt = "Grep For❯ ",
    previewer = true,
  },
  buffers = {
    prompt = "Buffers❯ ",
    sort_lastused = true,
  },
  helptags = {
    prompt = "Help❯ ",
  },
})

-- Keymaps for fzf-lua
vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", fzf.live_grep, { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", fzf.buffers, { desc = "Find buffers" })
vim.keymap.set("n", "<leader>fh", fzf.help_tags, { desc = "Find help" })

