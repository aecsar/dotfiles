return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {
      term_colors = true,
      transparent_background = vim.g.transparent_background,
      dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = 'dark',
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
      },
      integrations = {
        cmp = true,
        gitsigns = true,
        treesitter = true,
        harpoon = true,
        neotree = true,
        telescope = true,
        mason = true,
        noice = true,
        notify = true,
        which_key = true,
        fidget = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { 'italic' },
            hints = { 'italic' },
            warnings = { 'italic' },
            information = { 'italic' },
          },
          underlines = {
            errors = { 'underline' },
            hints = { 'underline' },
            warnings = { 'underline' },
            information = { 'underline' },
          },
          inlay_hints = {
            background = true,
          },
        },
        mini = {
          enabled = true,
          indentscope_color = '',
        },
      },
    },
  },
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.

    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    opts = {
      transparent = vim.g.transparent_background,
    },
  },
  {
    'scottmckendry/cyberdream.nvim',
    priority = 1000,
    opts = {
      transparent = vim.g.transparent_background,
    },
  },
  {
    'tiagovla/tokyodark.nvim',
    priority = 1000,
    opts = {
      transparent_background = vim.g.transparent_background,
    },
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
    opts = {
      styles = {
        -- bold = true,
        -- italic = true,
        transparency = vim.g.transparent_background,
      },
    },
  },
  {
    'ricardoraposo/nightwolf.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      {
        theme = 'black', -- 'black', 'dark-blue', 'gray', 'dark-gray', 'light'
        italic = true,
        transparency = vim.g.transparent_background,
        palette_overrides = {},
        highlight_overrides = {},
      },
    },
  },
}
