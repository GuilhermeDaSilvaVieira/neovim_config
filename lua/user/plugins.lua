vim.cmd[[ 
  augroup packer_user_config 
    autocmd! 
    autocmd BufWritePost plugins.lua source <afile> | PackerSync 
  augroup end 
]]

local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end


return packer.startup(function(use)
  -- Plugins para suporte de outros plugins
  use { 'nvim-lua/popup.nvim' }
  use { 'nvim-lua/plenary.nvim' }
  use { 'wbthomason/packer.nvim' }

  -- Ranger
  use { 'francoiscabrol/ranger.vim', requires = { 'rbgrouleff/bclose.vim' } }

  -- FZF
  use { 'junegunn/fzf' }

  -- ToggleTerm
  use { 'akinsho/toggleterm.nvim' }

  -- AutoPairs
  use { 'jiangmiao/auto-pairs' }

  -- Temas
  use { 'sainnhe/everforest' }
  use { 'folke/tokyonight.nvim' }

  -- Markdown preview
  use { 'iamcco/markdown-preview.nvim' }

  -- Auto completar
  use { 'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-nvim-lua',
      'hrsh7th/cmp-nvim-lsp',
      'saadparwaiz1/cmp_luasnip'
    },
  }

  -- Snippets
  use { 'L3MON4D3/LuaSnip' }
  use { 'rafamadriz/friendly-snippets' }


  -- LSP
  use { 'neovim/nvim-lspconfig', requires = { 'williamboman/nvim-lsp-installer' } }

  -- Melhores luzes na sintaxe
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'p00f/nvim-ts-rainbow' }

  -- Comentários
  use { 'JoosepAlviste/nvim-ts-context-commentstring' }
  use { 'numToStr/Comment.nvim' }

  --Git
  use { 'lewis6991/gitsigns.nvim' }
end)
