-- plugins
require("packer").startup(function(use)
  use "folke/which-key.nvim"
  use "echasnovski/mini.icons"
  use "wbthomason/packer.nvim"
  use "windwp/nvim-autopairs"
  use "SmiteshP/nvim-navic"

  -- Noice (UI for messages, cmdline, popupmenu)
  use({
    "folke/noice.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  })

use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
  -- existing plugins
  use { "nvim-tree/nvim-tree.lua", requires = { "nvim-tree/nvim-web-devicons" } }
  use { "ibhagwan/fzf-lua", requires = { "nvim-tree/nvim-web-devicons" } }
  use "sainnhe/sonokai"
  use { "nvim-lualine/lualine.nvim", requires = { "nvim-tree/nvim-web-devicons" } }

  use({
  "folke/noice.nvim",
  requires = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  }
})


  -- LSP + Completion
  use "neovim/nvim-lspconfig"
  use { "williamboman/mason.nvim", run = function()
  pcall(vim.cmd, "MasonUpdate")
end 
}

  use "williamboman/mason-lspconfig.nvim"

  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
end)

require("plugins.bufferline")
require("plugins.nvimtree")
require("plugins.fzf")
require("plugins.sonokai")
-- require("plugins.lualine")
require("plugins.lsp")
require("plugins.cmp")
require("plugins.autopairs")
require("plugins.noice")
-- require("plugins.mini_icons")
-- require("plugins.whichkey")


