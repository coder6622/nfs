local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
      'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path
    })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

return require('packer').startup({
  function(use)
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
    use {
      "olimorris/onedarkpro.nvim",
      config = "vim.cmd[[colorscheme onedark]]",
      commit = "c3409eca73d2ae334935ca4afdb0428f453ba404"
    }

    -- Treesitter - hightlight syntax
    use {
      "nvim-treesitter/nvim-treesitter",
      run = function()
        require("nvim-treesitter.install").update {with_sync = true}
      end,
      event = "BufWinEnter",
      config = "require('treesitter-config')"
    }

    use {
      'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true},
      event = "BufWinEnter",
      config = "require('lualine-config')",
      commit = "d15019ce8ed45d8231c7b4d6ba00f803c6c92a85"
    }

    use {'nvim-tree/nvim-web-devicons', commit = "3548363849878ef895ce54edda02421279b419d8"}
    -- -- buffer line
    use {
      'akinsho/bufferline.nvim',
      tag = 'v2.12.0',
      requires = {'nvim-tree/nvim-web-devicons', opt = true},
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
      config = "require('nvim-tree-config')",
      commit = "7944e479c18b7e79ff88a74cd829cf716d92aea5"
    }

    use {
      'windwp/nvim-ts-autotag',
      event = "InsertEnter",
      after = "nvim-treesitter",
      commit = "fdefe46c6807441460f11f11a167a2baf8e4534b"
    }

    use {
      'p00f/nvim-ts-rainbow',
      after = "nvim-treesitter",
      commit = "ef95c15a935f97c65a80e48e12fe72d49aacf9b9"
    }

    use {
      'windwp/nvim-autopairs',
      config = "require('autopairs-config')",
      after = "nvim-cmp",
      commit = "31042a5823b55c4bfb30efcbba2fc1b5b53f90dc"
    }

    use {
      'folke/which-key.nvim',
      event = "BufWinEnter",
      config = "require('whichkey-config')",
      commit = "e7fd51c6f8ec92623d4aa34f0ad3c1fc83cf8fa4"
    }

    use {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.1',
      requires = {{'nvim-lua/plenary.nvim'}},
      config = "require('telescope-config')",
      cmd = "Telescope"
    }

    use {'neovim/nvim-lspconfig', config = "require('lsp')"}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/nvim-cmp'}
    use {'hrsh7th/cmp-vsnip'}
    use {'hrsh7th/vim-vsnip'}
    use {'onsails/lspkind.nvim'}

    use {
      'norcalli/nvim-colorizer.lua',
      config = "require('colorizer-config')",
      event = "BufRead",
      commit = "36c610a9717cc9ec426a07c8e6bf3b3abcb139d6"
    }

    use {
      'lewis6991/gitsigns.nvim',
      tag = "v0.6",
      config = function()
        require('gitsigns').setup {current_line_blame = true}
      end
    }

    use {
      'glepnir/dashboard-nvim',
      commit = "06e9903aa779d35cb7a47a3e248b35424ee666fc",
      config = "require('dashboard-config')",
      cmd = "Dasboard",
      event = "VimEnter",
      requires = {'nvim-tree/nvim-web-devicons'}
    }

    use {
      "lukas-reineke/indent-blankline.nvim",
      event = "BufRead",
      config = "require('blankline-config')",
      commit = "39bb0d428aa4622fa0a4670506d2307165f1908e"
    }

    use {
      "akinsho/toggleterm.nvim",
      config = "require('toggleterm-config')",
      commit = "a54e6c471ce1cd8ef8357e34598a28a955297131"
    }

    use {
      "terrortylor/nvim-comment",
      config = "require('comment-config')",
      commit = "e9ac16ab056695cad6461173693069ec070d2b23"
    }

    use({"glepnir/lspsaga.nvim", branch = "main", config = "require('lspsaga-config')"})

    use {'jose-elias-alvarez/null-ls.nvim', config = "require('null-ls-config')"}
    use {"williamboman/mason.nvim"}
    use {"williamboman/mason-lspconfig.nvim", config = "require('mason-null-ls-config')"}
    use {"jay-babu/mason-null-ls.nvim"}

    use {
      "folke/zen-mode.nvim",
      config = "require('zen-mode-config')",
      commit = "5d8308ef39c14ecbd6850b56959094aa932285c6"
    }
    use {
      "folke/twilight.nvim",
      config = "require('twilight-config')",
      commit = "5e88a2e542a37a5e8b8c2d202d7184711feb15f5"
    }

    use {"rrethy/vim-illuminate", commit = "2d5e9b10aa75a8450d551ffde01ccc00c5f9ce70"}

    use {
      'rcarriga/nvim-notify',
      config = "require('notify-config')",
      commit = "bdd647f61a05c9b8a57c83b78341a0690e9c29d7"
    }

    use {'phaazon/hop.nvim', branch = 'v2', config = "require('hop-config')"}
  end,
  config = {
    display = {
      open_fn = function()
        return require('packer.util').float({border = 'single'})
      end
    }
  }
})
