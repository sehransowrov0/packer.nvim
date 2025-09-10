-- leader key
vim.g.mapleader = " "

-- disable default vim tabline
vim.opt.showtabline = 0

-- load packer
vim.cmd [[packadd packer.nvim]]

-- load plugin configs
require("plugins.plugins")

-- load configs
require("config.options")
require("config.keymaps")
require("config.pluginsconfig")

vim.env.FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!node_modules/*" --glob "!.git/*" --glob "!dist/*"'

