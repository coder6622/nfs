vim.lsp.handlers['textDocument/publishDiagnostics'] =
vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  virtual_text = { spacing = 5, severity_limit = 'Warning' },
  update_in_insert = true
})

require 'nvim-treesitter'.setup {
  ensure_installed = {
    "c", "lua", "vim", "help", "cpp", "html", "javascript", "css", "dart", "json5", "markdown",
    "scss", "python", "java"
  },
  highlight = { enable = true, additional_vim_regex_highlighting = false },
  autotag = { enable = true },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }
}
