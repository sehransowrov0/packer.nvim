-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

-- indentation
vim.opt.tabstop = 2       -- number of spaces a <Tab> counts for
vim.opt.shiftwidth = 2    -- number of spaces used for autoindent
vim.opt.expandtab = true  -- convert tabs to spaces

-- file explorer
vim.g.netrw_banner = 0        -- hide the top banner
vim.g.netrw_liststyle = 3     -- tree view
vim.g.netrw_browse_split = 4  -- open in prior window
vim.g.netrw_altv = 1
vim.g.netrw_winsize = 25      -- width of explorer

-- hide ~ on empty lines
vim.opt.fillchars = { eob = " " }

