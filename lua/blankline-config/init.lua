-- vim.opt.termguicolors = true
-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent7 guibg=#d64e12 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent8 guibg=#ffab00 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent9 guibg=#0c164f gui=nocombine]]
vim.opt.list = true
vim.opt.listchars:append "space:⋅"
require("indent_blankline").setup {
  show_current_context = true,
  buftype_exclude = {
    "terminal", "nofile", "dashboard", "NvimTree", "packer", "lsp-installer", "telescope"
  },
  filetype_exclude = {"dashboard", "NvimTree", "packer", "lsp-installer", "telescope"},
  show_current_context_start = true,
  show_end_of_line = true,
  space_char_blankline = " ",
  context_patterns = {
    "class", "return", "function", "method", "^if", "^while", "jsx_element", "^for", "^object",
    "^table", "block", "arguments", "if_statement", "else_clause", "jsx_element",
    "jsx_self_closing_element", "try_statement", "catch_clause", "import_statement",
    "operation_type"
  }
  -- char_highlight_list = {
  --    "IndentBlanklineIndent1",
  --    "IndentBlanklineIndent2",
  --    "IndentBlanklineIndent3",
  --    "IndentBlanklineIndent4",
  --    "IndentBlanklineIndent5",
  --    "IndentBlanklineIndent6",
  --    "IndentBlanklineIndent7",
  --    "IndentBlanklineIndent8",
  --    "IndentBlanklineIndent9",
  -- },
  --
  --
}
