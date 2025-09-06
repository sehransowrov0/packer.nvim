-- leader key
vim.g.mapleader = " "

-- load packer
vim.cmd [[packadd packer.nvim]]

-- plugins
require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- existing plugins
  use { "nvim-tree/nvim-tree.lua", requires = { "nvim-tree/nvim-web-devicons" } }
  use { "ibhagwan/fzf-lua", requires = { "nvim-tree/nvim-web-devicons" } }
  use "sainnhe/sonokai"
  use { "nvim-lualine/lualine.nvim", requires = { "nvim-tree/nvim-web-devicons" } }

  -- LSP + Completion
  use "neovim/nvim-lspconfig"
  -- use { "williamboman/mason.nvim", run = ":MasonUpdate" }
  use { "williamboman/mason.nvim", run = function()
  pcall(vim.cmd, "MasonUpdate")
end }

  use "williamboman/mason-lspconfig.nvim"

  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
end)


-- load plugin configs
require("plugins.nvimtree")
require("plugins.fzf")
require("plugins.sonokai")
require("plugins.lualine")
require("plugins.cmp")
require("plugins.lsp")
require("plugins.cmp")
require("plugins.lsp")

-- load configs
require("config.options")
require("config.keymaps")

