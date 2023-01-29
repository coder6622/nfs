vim.g.mapleader = ' '
local keymap = vim.keymap.set
local optsSilent = {noremap = true, silent = true}
local opts = {noremap = true, silent = false}

keymap('n', '<C-n>', ":NvimTreeToggle<CR>", optsSilent)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", optsSilent)
keymap("n", "<C-Down>", ":resize +2<CR>", optsSilent)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", optsSilent)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", optsSilent)

keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

keymap('n', 'x', '"_x', optsSilent) -- do not yank with x

-- increase/decrease number
keymap('n', '+', '<C-a>', optsSilent)
keymap('n', '-', '<C-x>', optsSilent)

-- delete a word backwords
keymap('n', 'dw', 'vb"_d', optsSilent)

keymap('n', '<C-h>', ':nohl<CR>', optsSilent)

keymap('n', '<C-t>', ":ToggleTerm size=13 direction=horizontal<CR>", optsSilent)
keymap('n', '<C-p>', ":ToggleTerm size=40 direction=vertical<CR>", optsSilent)

keymap("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>", opts)
keymap("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>", opts)

keymap("n", "<Leader><Leader>b", "<cmd>HopWordBC<CR>", {noremap = true})
keymap("n", "<Leader><Leader>w", "<cmd>HopWordAC<CR>", {noremap = true})
keymap("n", "<Leader><Leader>j", "<cmd>HopLineAC<CR>", {noremap = true})
keymap("n", "<Leader><Leader>k", "<cmd>HopLineBC<CR>", {noremap = true})

-- visual mode (easymotion-like)
keymap("v", "<Leader><Leader>w", "<cmd>HopWordAC<CR>", {noremap = true})
keymap("v", "<Leader><Leader>b", "<cmd>HopWordBC<CR>", {noremap = true})
keymap("v", "<Leader><Leader>j", "<cmd>HopLineAC<CR>", {noremap = true})
keymap("v", "<Leader><Leader>k", "<cmd>HopLineBC<CR>", {noremap = true})

-- normal mode (sneak-like)
keymap("n", "<Leader><Leader>f", "<cmd>HopChar2AC<CR>", {noremap = false})
keymap("n", "<Leader><Leader>F", "<cmd>HopChar2BC<CR>", {noremap = false})

-- visual mode (sneak-like)
keymap("v", "<Leader><Leader>f", "<cmd>HopChar2AC<CR>", {noremap = false})
keymap("v", "<Leader><Leader>F", "<cmd>HopChar2BC<CR>", {noremap = false})

---- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)
