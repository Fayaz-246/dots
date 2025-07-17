return {
  { -- Show CSS Colors
    'brenoprata10/nvim-highlight-colors',
    config = function()
      require('nvim-highlight-colors').setup({})
    end
  },
  { -- <leader>/ commenting
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  },
  { -- This helps with ssh tunneling and copying to clipboard
    'ojroques/vim-oscyank',
  },
  { -- Icons for netrw
    'prichrd/netrw.nvim',
    opts = {},
    config = function()
      require("netrw").setup({
        use_devicons = true,
      })
    end
  },

  { 'jose-elias-alvarez/typescript.nvim' },
  {
    'wakatime/vim-wakatime',
    lazy = false
  },
}
