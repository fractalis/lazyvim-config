return {
  "neovim/nvim-lspconfig",
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function()
      return require("config.rust-tools")
    end,
  },

  -- Complete and Snippets plugin suite
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-nvim-lsp-signature-help",
  "hrsh7th/cmp-nvim-lua",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-vsnip",
  "hrsh7th/nvim-cmp",
  "hrsh7th/vim-vsnip",

  -- Treesitter
  "nvim-treesitter/nvim-treesitter",

  "mfussenegger/nvim-dap",

  "voldikss/vim-floaterm",

  "nvim-telescope/telescope.nvim",
  "nvim-telescope/telescope-file-browser.nvim",
  "phaazon/hop.nvim",

  "BurntSushi/ripgrep",
  "sharkdp/fd",

  "kyazdani42/nvim-tree.lua",
  "preservim/tagbar",
  "folke/todo-comments.nvim",
  "folke/trouble.nvim",

  "lukas-reineke/indent-blankline.nvim",
  "windwp/nvim-autopairs",
  "tpope/vim-surround",
  "RRethy/vim-illuminate",
  "numToStr/Comment.nvim",

  "m-demare/hlargs.nvim",
  "danilamihailov/beacon.nvim",
  "tanvirtin/monokai.nvim",
  "navarasu/onedark.nvim",
  "lewis6991/impatient.nvim",

  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({})
    end,
  },

  "onsails/lspkind-nvim",
  "L3MON4D3/LuaSnip",
  "akinsho/nvim-bufferline.lua",
  "glepnir/lspsaga.nvim",
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
  {
    "saecki/crates.nvim",
    ft = { "rust", "toml" },
    config = function(_, opts)
      local crates = require("crates")
      crates.setup(opts)
      crates.show()
    end,
  },
}
