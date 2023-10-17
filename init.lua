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
  "nanotech/jellybeans.vim",
  "ayu-theme/ayu-vim",
  "rebelot/kanagawa.nvim",
  "catppuccin/nvim",
  "folke/tokyonight.nvim",

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
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  "sheerun/vim-polyglot",
  "ray-x/go.nvim",

  -- Status/Tabline
  "nvim-lualine/lualine.nvim",

  -- QOL
  "cohama/lexima.vim", -- auto pairs
  "mbbill/undotree",
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  "lukas-reineke/indent-blankline.nvim",
  "easymotion/vim-easymotion",
  {"akinsho/toggleterm.nvim", version = "*", config = true},
  {"folke/which-key.nvim", event = "VeryLazy"},
})

vim.keymap.set("n", "<leader>ll", ":Lazy<CR>", {desc = "Open Lazy (plugin manager)"})

