vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorscheme-- Using Packer
  -- use 'navarasu/onedark.nvim'
  -- use {
  --     'rose-pine/neovim',
  --     name = 'rose-pine',
  --     lazy = false,
  --     priority = 1000,
  --     config = function()
  --         require("rose-pine").setup()
  --         vim.cmd('colorscheme rose-pine')
  --     end
  -- }
  use { "olimorris/onedarkpro.nvim", config = "vim.cmd[[colorscheme onedark]]" }

  -- Treesitter - hightlight syntax
  use {
    "nvim-treesitter/nvim-treesitter",
    run = function()
      require("nvim-treesitter.install").update { with_sync = true }
    end,
    event = "BufWinEnter",
    config = "require('treesitter-config')"
  }

  -- Lua line - status
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    event = "BufWinEnter",
    config = "require('lualine-config')"
  }

  -- buffer line
  use {
    'akinsho/bufferline.nvim',
    tag = "v3.*",
    requires = 'nvim-tree/nvim-web-devicons',
    event = "BufWinEnter",
    config = "require('bufferline-config')"
  }

  -- explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons' -- optional, for file icons
    },
    tag = 'nightly', -- optional, updated every week. (see issue #1193)
    cmd = "NvimTreeToggle",
    config = "require('nvim-tree-config')"
  }

  use { 'windwp/nvim-ts-autotag', event = "InsertEnter", after = "nvim-treesitter" }

  use { 'p00f/nvim-ts-rainbow', after = "nvim-treesitter" }

  use { 'windwp/nvim-autopairs', config = "require('autopairs-config')", after = "nvim-cmp" }

  use { 'folke/which-key.nvim', event = "BufWinEnter", config = "require('whichkey-config')" }

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } },
    config = "require('telescope-config')",
    cmd = "Telescope"
  }

  use { 'neovim/nvim-lspconfig', config = "require('lsp')" }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-vsnip' }
  use { 'hrsh7th/vim-vsnip' }
  use { 'onsails/lspkind.nvim' }

  use { 'norcalli/nvim-colorizer.lua', config = "require('colorizer-config')", event = "BufRead" }

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup { current_line_blame = true }
    end
  }

  use {
    'glepnir/dashboard-nvim',
    config = "require('dashboard-config')",
    cmd = "Dasboard",
    event = "BufEnter"
  }

  use {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufRead",
    config = "require('blankline-config')"
  }

  use { "akinsho/toggleterm.nvim", config = "require('toggleterm-config')" }

  use { "terrortylor/nvim-comment", config = "require('comment-config')" }

  use({ "glepnir/lspsaga.nvim", branch = "main", config = "require('lspsaga-config')" })

  use { "williamboman/nvim-lsp-installer" }

  use { 'jose-elias-alvarez/null-ls.nvim', config = "require('null-ls-config')" }

  use { "folke/zen-mode.nvim", config = "require('zen-mode-config')" }
  use { "folke/twilight.nvim", config = "require('twilight-config')" }
end)
