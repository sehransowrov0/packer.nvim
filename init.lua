-- leader key
vim.g.mapleader = " "

-- disable default vim tabline
vim.opt.showtabline = 0

-- load packer
vim.cmd [[packadd packer.nvim]]

-- plugins
require("packer").startup(function(use)
  use "echasnovski/mini.icons"
  use "wbthomason/packer.nvim"
  use "windwp/nvim-autopairs"
  use "SmiteshP/nvim-navic"
  -- use "utilyre/barbecue.nvim"
    -- Noice (UI for messages, cmdline, popupmenu)
  use({
    "folke/noice.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  })


  -- existing plugins
  use { "nvim-tree/nvim-tree.lua", requires = { "nvim-tree/nvim-web-devicons" } }
  use { "ibhagwan/fzf-lua", requires = { "nvim-tree/nvim-web-devicons" } }
  use "sainnhe/sonokai"
  use { "nvim-lualine/lualine.nvim", requires = { "nvim-tree/nvim-web-devicons" } }
  -- use { "akinsho/bufferline.nvim", requires = "nvim-tree/nvim-web-devicons" }

  -- use { "romgrk/barbar.nvim", requires = "nvim-tree/nvim-web-devicons" }

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


-- load plugin configs
require("plugins.nvimtree")
require("plugins.fzf")
require("plugins.sonokai")
require("plugins.lualine")
require("plugins.lsp")
require("plugins.cmp")
require("plugins.autopairs")
-- require("plugins.bufferline")
-- require("plugins.barbar")
require("plugins.noice")
require("plugins.mini_icons")



-- load configs
require("config.options")
require("config.keymaps")

