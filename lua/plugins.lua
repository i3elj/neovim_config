vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
   use {
   'wbthomason/packer.nvim',
   -- UI
   'dylanaraps/wal.vim',
   'joshdick/onedark.vim',
   'junegunn/goyo.vim',
   -- treesitter
   'nvim-treesitter/nvim-treesitter',
   -- git
   'lewis6991/gitsigns.nvim',
   -- utility
   'junegunn/fzf',
   'junegunn/fzf.vim',
   'mbbill/undotree',
   'tpope/vim-surround',
   'numToStr/Comment.nvim',
   'qpkorr/vim-bufkill',
   -- lsp & friends
   'neovim/nvim-lspconfig',
   'hrsh7th/cmp-nvim-lsp',
   'hrsh7th/cmp-buffer',
   'hrsh7th/cmp-path',
   'hrsh7th/cmp-cmdline',
   'hrsh7th/nvim-cmp',
   'saadparwaiz1/cmp_luasnip',
   'L3MON4D3/LuaSnip',
   "rafamadriz/friendly-snippets",
   "williamboman/nvim-lsp-installer",
   }
end)
