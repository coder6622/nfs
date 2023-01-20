
local wk = require("which-key")

local mappings = {
  q = {':wqa<cr>', 'Save and Quit'},
  w = {':wa<cr>', 'Save all'},
  s = {':PackerSync<cr>', 'Packer Sync'} ,
  f = {':Telescope find_files<cr>', 'Find Files'},
  r = {':Telescope live_grep<cr>', 'Live grep'},
  R = {':Telescope resume<cr>', 'Telescope resume'}
}
local opts = {prefix = '<leader>' }

wk.register(mappings, opts)
