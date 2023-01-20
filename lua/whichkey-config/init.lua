
local wk = require("which-key")

local mappings = {
  q = {':wqa<cr>', "Save and Quit"},
  w = {':wa<cr>', "Save all"},
}
local opts = {prefix = "<leader>" }

wk.register(mappings, opts)
