-- plugins/init.lua
return {
  -- Colorscheme
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme rose-pine")
      vim.cmd [[
      hi Normal guibg=NONE ctermbg=NONE
      hi NormalNC guibg=NONE ctermbg=NONE
      hi SignColumn guibg=NONE ctermbg=NONE
      hi VertSplit guibg=NONE ctermbg=NONE
      ]]
end
  },

  -- File explorer
  { "nvim-tree/nvim-tree.lua", config = function() require("nvim-tree").setup() end },

  -- Statusline
  { "nvim-lualine/lualine.nvim", config = function() require("lualine").setup() end },

  -- Fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}
