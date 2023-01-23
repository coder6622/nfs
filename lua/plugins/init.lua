vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorscheme-- Using Packer
  --use 'navarasu/onedark.nvim'
  use "olimorris/onedarkpro.nvim"

  -- Treesitter - hightlight syntax
  use {
    "nvim-treesitter/nvim-treesitter",
    run = function() require("nvim-treesitter.install").update { with_sync = true } end
  }

  -- Lua line - status 
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- buffer line
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  -- explorer 
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use {'windwp/nvim-ts-autotag'}
  use {'p00f/nvim-ts-rainbow'}
  use {'windwp/nvim-autopairs'}

  use {'folke/which-key.nvim'}

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  use 'onsails/lspkind.nvim'

  use 'norcalli/nvim-colorizer.lua'

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup{current_line_blame = true,}
    end
  }

  use 'glepnir/dashboard-nvim'

  use "lukas-reineke/indent-blankline.nvim"
  use "lukas-reineke/lsp-format.nvim"

  use "akinsho/toggleterm.nvim"

  use "terrortylor/nvim-comment" 
end)
