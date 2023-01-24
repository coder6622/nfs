vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
local optsSilent = { noremap = true, silent = true}
local opts = { noremap = true, silent = false} 


map('n', '<C-n>', ":NvimTreeToggle<CR>", optsSilent)

-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>", optsSilent)
map("n", "<C-Down>", ":resize +2<CR>", optsSilent)
map("n", "<C-Left>", ":vertical resize -2<CR>", optsSilent)
map("n", "<C-Right>", ":vertical resize +2<CR>", optsSilent)

map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)


map('n', 'x', '"_x', optsSilent) -- do not yank with x

-- increase/decrease number
map('n', '+', '<C-a>', optsSilent)
map('n', '-', '<C-x>', optsSilent)

-- delete a word backwords
map('n', 'dw', 'vb"_d', optsSilent)

map('n', '<C-h>', ':nohl<CR>', optsSilent)


map('n', '<C-t>', ":ToggleTerm size=13 direction=horizontal<CR>", optsSilent)
map('n', '<C-p>', ":ToggleTerm size=40 direction=vertical<CR>", optsSilent)

map("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>",
    opts)
map("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>",
    opts)
