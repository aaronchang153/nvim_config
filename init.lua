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

-- Plugin versions were verified on nvim v0.12.0
require("lazy").setup({
  -- Colors
  "ayu-theme/ayu-vim",
  "rebelot/kanagawa.nvim",
  "catppuccin/nvim",

  -- Fuzzy Finder
  {
    'nvim-telescope/telescope.nvim',
    tag = 'v0.2.2',
    dependencies = {
      {'nvim-lua/plenary.nvim', commit = 'b9fd5226c2f76c951fc8ed5923d85e4de065e509'}
    }
  },

  -- Git
  {
    "NeogitOrg/neogit",
    tag = 'v3.0.0',
    dependencies = {
      {"sindrets/diffview.nvim", commit = "4516612fe98ff56ae0415a259ff6361a89419b0a"},
    },
    config = true
  },
  {"lewis6991/gitsigns.nvim", tag = "v2.1.0"},

  -- LSP
  {'neovim/nvim-lspconfig', tag = 'v2.7.0'},
  {'hrsh7th/nvim-cmp', commit = '8c82d0bd31299dbff7f8e780f5e06d2283de9678'},
  {'hrsh7th/cmp-nvim-lsp', commit = 'cbc7b02bb99fae35cb42f514762b89b5126651ef'},
  {'L3MON4D3/LuaSnip', commit = '5a1e39223db9a0498024a77b8441169d260c8c25'},
  {'mason-org/mason.nvim', commit = '44d1e90e1f66e077268191e3ee9d2ac97cc18e65'},
  {'mason-org/mason-lspconfig.nvim', commit = '25f609e7fca78af7cede4f9fa3af8a94b1c4950b'},

  {
    "nvim-treesitter/nvim-treesitter",
    tag = "v0.10.0",
    build = ":TSUpdate",
  }, 

  -- LSP (diagnostics)
  {
    "folke/trouble.nvim",
    commit = "bd67efe408d4816e25e8491cc5ad4088e708a69a",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config=true,
  },
  {"nvimdev/lspsaga.nvim", commit = "562d9724e3869ffd1801c572dd149cc9f8d0cc36"},

  -----------------------------------------------
  -- Remaining plugins are less important.
  -- It's probably safe to just pull the latest.
  -----------------------------------------------

  -- Other Language Stuff
  "sheerun/vim-polyglot",

  -- Status/Tabline
  "nvim-lualine/lualine.nvim",
  { "j-hui/fidget.nvim", config = true },

  -- QOL
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true,
  },
  "mbbill/undotree",
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  "lukas-reineke/indent-blankline.nvim",
  "easymotion/vim-easymotion",
  {"akinsho/toggleterm.nvim", version = "*", config = true},
  {"folke/which-key.nvim", event = "VeryLazy"},
  "folke/zen-mode.nvim",
  "kylechui/nvim-surround",
  "tpope/vim-commentary",
})

vim.keymap.set("n", "<leader>ll", ":Lazy<CR>", {desc = "Open Lazy (plugin manager)"})

