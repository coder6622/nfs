vim.cmd('filetype plugin indent on')
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.hidden = true
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
vim.o.pumheight = 10 --pop up menu height
vim.o.fileencoding = 'utf-8'
vim.o.cmdheight = 1
vim.o.splitbelow = true
vim.o.splitright = true
vim.opt.termguicolors = true
vim.o.conceallevel = 0
vim.o.showtabline = 2
vim.o.showmode = false -- show mode in bottom
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300
vim.o.timeoutlen = 100
vim.o.clipboard = "unnamedplus"  -- set the system clipboard
--vim.o.hlsearch = false
vim.o.ignorecase = true  -- search 
vim.o.scrolloff = 3
vim.o.sidescrolloff = 5
vim.o.mouse = "a" -- enable our mouse click
vim.o.mousemoveevent = true
vim.wo.wrap = true
vim.wo.linebreak = true
vim.wo.list = false
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.cursorline = true
vim.wo.signcolumn = "yes" -- help showing any diagnostics behind the numbers
vim.o.tabstop = 2
--vim.bo.btabstop = 2
vim.o.softbtabstop = 2
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.expandtab = true
vim.bo.expandtab = true








