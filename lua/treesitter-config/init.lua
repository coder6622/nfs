require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "help" , "cpp", "html", "javascript", "css", "dart", "json5", "markdown", "scss", "python", "java"},

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },
}
