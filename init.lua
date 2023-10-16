require("myconfig")

-- Plugin Manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Colors
  "rktjmp/lush.nvim", -- needed by jellybeans-nvim
  "metalelf0/jellybeans-nvim",
  "rebelot/kanagawa.nvim",
  "catppuccin/nvim",

  -- Fuzzy Finder
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- Git
  "tpope/vim-fugitive",
  "lewis6991/gitsigns.nvim",

  -- LSP
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},

  -- Other Language Stuff
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },
  "sheerun/vim-polyglot",
  "ray-x/go.nvim",

  -- QOL
  "cohama/lexima.vim", -- auto pairs
  "mbbill/undotree",
  "nvim-tree/nvim-tree.lua",
  "lukas-reineke/indent-blankline.nvim",
})

