-- config/plugins
require("packer").startup(function(use)
  use "folke/which-key.nvim"
  use "echasnovski/mini.icons"
  use "wbthomason/packer.nvim"
  use "windwp/nvim-autopairs"
  use "SmiteshP/nvim-navic"
  use({ "folke/noice.nvim", requires = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify", }})
  use "sainnhe/sonokai"
  use { "nvim-tree/nvim-tree.lua", requires = { "nvim-tree/nvim-web-devicons" } }
  use { "nvim-lualine/lualine.nvim", requires = { "nvim-tree/nvim-web-devicons" } }
  use { "ibhagwan/fzf-lua", requires = { "nvim-tree/nvim-web-devicons" } }
  use { "williamboman/mason.nvim", run = function() pcall(vim.cmd, "MasonUpdate") end }
  use "nvimtools/none-ls.nvim"
  use "nvim-lua/plenary.nvim"


  -- LSP + Completion
  use "neovim/nvim-lspconfig"
  use "williamboman/mason-lspconfig.nvim"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
end)

