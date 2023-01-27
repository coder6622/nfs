vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
local optsSilent = {noremap = true, silent = true}
local opts = {noremap = true, silent = false}

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

map("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>", opts)
map("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>", opts)

map("n", "<Leader><Leader>b", "<cmd>HopWordBC<CR>", {noremap = true})
map("n", "<Leader><Leader>w", "<cmd>HopWordAC<CR>", {noremap = true})
map("n", "<Leader><Leader>j", "<cmd>HopLineAC<CR>", {noremap = true})
map("n", "<Leader><Leader>k", "<cmd>HopLineBC<CR>", {noremap = true})

-- visual mode (easymotion-like)
map("v", "<Leader><Leader>w", "<cmd>HopWordAC<CR>", {noremap = true})
map("v", "<Leader><Leader>b", "<cmd>HopWordBC<CR>", {noremap = true})
map("v", "<Leader><Leader>j", "<cmd>HopLineAC<CR>", {noremap = true})
map("v", "<Leader><Leader>k", "<cmd>HopLineBC<CR>", {noremap = true})

-- normal mode (sneak-like)
map("n", "<Leader><Leader>f", "<cmd>HopChar2AC<CR>", {noremap = false})
map("n", "<Leader><Leader>F", "<cmd>HopChar2BC<CR>", {noremap = false})

-- visual mode (sneak-like)
map("v", "<Leader><Leader>f", "<cmd>HopChar2AC<CR>", {noremap = false})
map("v", "<Leader><Leader>F", "<cmd>HopChar2BC<CR>", {noremap = false})
