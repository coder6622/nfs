require("nvim-tree").setup{
  sort_by = "name",
  hijack_directories = {
      enable = true,
      auto_open = true,
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  view = {
      adaptive_size = false,
      centralize_selection = false,
      cursorline = true,
      debounce_delay = 15,
      width = 25,
      hide_root_folder = false,
      side = "left",
      preserve_window_proportions = true,
      number = true,
      relativenumber = true,
      signcolumn = "yes",
      mappings = {
        custom_only = false,
        list = {
        },
      },
  }
}




