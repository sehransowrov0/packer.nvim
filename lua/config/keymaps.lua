-- ctrl+s to save
vim.keymap.set("n", "<C-s>", ":w<CR>", { silent = true })
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>a", { silent = true })
vim.keymap.set("v", "<C-s>", "<Esc>:w<CR>gv", { silent = true })
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>", { silent = true })

-- Keymaps
-- vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "Find files" })
-- vim.keymap.set("n", "<leader>fg", fzf.live_grep, { desc = "Live grep" })
-- vim.keymap.set("n", "<leader>fb", fzf.buffers, { desc = "Find buffers" })
-- vim.keymap.set("n", "<leader>fh", fzf.help_tags, { desc = "Help tags" })

-- jj to escape
vim.keymap.set("i", "jj", "<Esc>")

-- diagnostics
vim.keymap.set("n", "es", vim.diagnostic.open_float, { desc = "Show diagnostics" })
vim.keymap.set("n", "ep", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
vim.keymap.set("n", "en", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Diagnostics to loclist" })

-- buffer navigation
vim.keymap.set("n", "[b", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "]b", ":bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete buffer" })
vim.keymap.set("n", "<leader>fb", require("fzf-lua").buffers, { desc = "Find buffers" })


