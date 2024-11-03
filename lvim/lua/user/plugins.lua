-- * PLUGINS CONFIGURATION

lvim.plugins = {
  -- Theme & UI
  { "Yazeed1s/oh-lucy.nvim" },
  {
    "j-hui/fidget.nvim",
    opts = {
      -- options
    },
  },
  {
    "lukas-reineke/virt-column.nvim",
    opts = {
      char = { "┆" },
      virtcolumn = "130",
      highlight = { "NonText" },
    }
  },
  {
    "folke/twilight.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  {
    "mawkler/modicator.nvim",
    dependencies = "scottmckendry/cyberdream.nvim",
    init = function()
      -- These are required for Modicator to work
      vim.o.cursorline = false
      vim.o.number = true
      vim.o.termguicolors = true
    end,
    opts = {},
  },
  -- {
  --   "folke/noice.nvim",
  --   event = "VeryLazy",
  --   opts = {
  --     -- add any options here
  --   },
  --   dependencies = {
  --     -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
  --     "MunifTanjim/nui.nvim",
  --     -- OPTIONAL:
  --     --   `nvim-notify` is only needed, if you want to use the notification view.
  --     --   If not available, we use `mini` as the fallback
  --     "rcarriga/nvim-notify",
  --   }
  -- },
  {
    "echasnovski/mini.icons",
    lazy = true,
    opts = {
      file = {
        [".keep"] = { glyph = "󰊢", hl = "MiniIconsGrey" },
        ["devcontainer.json"] = { glyph = "", hl = "MiniIconsAzure" },
      },
      filetype = {
        dotenv = { glyph = "", hl = "MiniIconsYellow" },
      },
    },
    init = function()
      package.preload["nvim-web-devicons"] = function()
        require("mini.icons").mock_nvim_web_devicons()
        return package.loaded["nvim-web-devicons"]
      end
    end,
  },
  { 'ayu-theme/ayu-vim' },
  { "rose-pine/neovim",             name = "rose-pine" },
  { "EdenEast/nightfox.nvim" },
  { 'drewtempelmeyer/palenight.vim' },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  -- {
  --   "kevinhwang91/nvim-bqf",
  --   event = { "BufRead", "BufNew" },
  --   config = function()
  --     require("bqf").setup({
  --       auto_enable = true,
  --       preview = {
  --         win_height = 12,
  --         win_vheight = 12,
  --         delay_syntax = 80,
  --         border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
  --       },
  --       func_map = {
  --         vsplit = "",
  --         ptogglemode = "z,",
  --         stoggleup = "",
  --       },
  --       filter = {
  --         fzf = {
  --           action_for = { ["ctrl-s"] = "split" },
  --           extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
  --         },
  --       },
  --     })
  --   end,
  -- },

  -- Code
  -- {
  --   "williamboman/mason.nvim",
  --   "williamboman/mason-lspconfig.nvim",
  --   "neovim/nvim-lspconfig",
  -- },
  { 'sbdchd/neoformat' },
  {
    'neoclide/coc.nvim',
    build = 'npm ci'
  }, -- used with deno
  { 'akinsho/git-conflict.nvim', version = "*", config = true },
  -- {
  --   'jayli/vim-easycomplete',
  --   dependencies = {
  --     'SirVer/ultisnips'
  --   }
  -- },
  {
    "smjonas/inc-rename.nvim",
    config = function()
      require("inc_rename").setup()
    end,
  },
  -- { "jwalton512/vim-blade" },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    event = "BufRead",
  },
  {
    "mrjones2014/nvim-ts-rainbow",
  },
  -- { "github/copilot.vim" },

  -- {
  --   "zbirenbaum/copilot-cmp",
  --   config = function()
  --     require("copilot_cmp").setup()
  --   end
  -- },
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   config = function()
  --     require "lsp_signature".setup({
  --       -- …
  --     })
  --   end,
  -- },

  -- Utilities
  {
    "rbong/vim-flog",
    lazy = true,
    cmd = { "Flog", "Flogsplit", "Floggit" },
    dependencies = {
      "tpope/vim-fugitive",
    },
  },
  {
    "ggandor/leap.nvim",
    name = "leap",
    config = function()
      require("leap").add_default_mappings()
    end,
  },
  {
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      vim.cmd "highlight default link gitblame SpecialComment"
      require("gitblame").setup { enabled = false }
    end,
  },
  {
    'rmagatti/auto-session',
    lazy = false,
    dependencies = {
      'nvim-telescope/telescope.nvim', -- Only needed if you want to use sesssion lens
    },
    config = function()
      require('auto-session').setup({
        auto_session_suppress_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
      })
    end,
  },
  -- {
  --   "Pocco81/auto-save.nvim",
  --   config = function()
  --     require("auto-save").setup()
  --   end,
  -- },
  {
    "npxbr/glow.nvim",
    ft = { "markdown" }
    -- You must install glow globally
    -- https://github.com/charmbracelet/glow
    -- yay -S glow
    -- build = "yay -S glow"
  },
  -- {
  --   "karb94/neoscroll.nvim",
  --   event = "WinScrolled",
  --   config = function()
  --     require('neoscroll').setup({
  --       -- All these keys will be mapped to their corresponding default scrolling animation
  --       mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f>',
  --         '<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
  --       hide_cursor = true,          -- Hide cursor while scrolling
  --       stop_eof = true,             -- Stop at <EOF> when scrolling downwards
  --       use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
  --       respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
  --       cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
  --       easing_function = nil,       -- Default easing function
  --       pre_hook = nil,              -- Function to run before the scrolling animation starts
  --       post_hook = nil,             -- Function to run after the scrolling animation ends
  --     })
  --   end
  -- },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "itchyny/vim-cursorword",
    event = { "BufEnter", "BufNewFile" },
    config = function()
      vim.api.nvim_command("augroup user_plugin_cursorword")
      vim.api.nvim_command("autocmd!")
      vim.api.nvim_command("autocmd FileType NvimTree,lspsagafinder,dashboard,vista let b:cursorword = 0")
      vim.api.nvim_command("autocmd WinEnter * if &diff || &pvw | let b:cursorword = 0 | endif")
      vim.api.nvim_command("autocmd InsertEnter * let b:cursorword = 0")
      vim.api.nvim_command("autocmd InsertLeave * let b:cursorword = 1")
      vim.api.nvim_command("augroup END")
    end
  },
  {
    "folke/trouble.nvim",
    opts = {
      -- settings without a patched font or icons
      -- icons = false,
      -- fold_open = "v",      -- icon used for open folds
      -- fold_closed = ">",    -- icon used for closed folds
      -- indent_lines = false, -- add an indent guide below the fold icons
      -- signs = {
      --   -- icons / text used for a diagnostic
      --   error = "E",
      --   warning = "W",
      --   hint = "H",
      --   information = "I",
      -- },
      -- use_diagnostic_signs = false, -- enabling this will use the signs defined in your lsp client
    },
  },
  {
    "itchyny/vim-cursorword",
    enabled = false,
    event = { "BufEnter", "BufNewFile" },
    config = function()
      vim.api.nvim_command("augroup user_plugin_cursorword")
      vim.api.nvim_command("autocmd!")
      vim.api.nvim_command("autocmd FileType NvimTree,lspsagafinder,dashboard,vista let b:cursorword = 0")
      vim.api.nvim_command("autocmd WinEnter * if &diff || &pvw | let b:cursorword = 0 | endif")
      vim.api.nvim_command("autocmd InsertEnter * let b:cursorword = 0")
      vim.api.nvim_command("autocmd InsertLeave * let b:cursorword = 1")
      vim.api.nvim_command("augroup END")
    end
  },
  {
    "AckslD/nvim-neoclip.lua",
    -- lazy = false,
    dependencies = {
      -- you'll need at least one of these
      { 'kkharji/sqlite.lua',           module = 'sqlite' },
      { 'nvim-telescope/telescope.nvim' },
      -- {'ibhagwan/fzf-lua'},
    },
    config = function()
      require('neoclip').setup({
        -- enable_persistent_history = true,
      })
    end,
  },
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local conf = require("conform")

      conf.setup({
        log_level = vim.log.levels.DEBUG,
        formatters_by_ft = {
          lua = { "stylua" },
          typescript = { "prettierd", "prettier" },
          typescriptreact = { "prettierd", "prettier" },
          javascript = { "prettierd", "prettier" },
          javascriptreact = { "prettierd", "prettier" },
          go = { "goimports", "gofmt" },

          ["*"] = { "codespell" },
          -- Use the "_" filetype to run formatters on filetypes that don't
          -- have other formatters configured.
          ["_"] = { "trim_whitespace" },
        },
      })

      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*",
        callback = function(args)
          require("conform").format({ bufnr = args.buf, lsp_fallback = true })
        end,
      })
    end,
  },
  {
    "wakatime/vim-wakatime",
    lazy = false,
  },
}

-- table.insert(lvim.plugins, {
--   "zbirenbaum/copilot-cmp",
--   event = "InsertEnter",
--   dependencies = { "zbirenbaum/copilot.lua" },
--   config = function()
--     vim.defer_fn(function()
--       require("copilot").setup()     -- https://github.com/zbirenbaum/copilot.lua/blob/master/README.md#setup-and-configuration
--       require("copilot_cmp").setup() -- https://github.com/zbirenbaum/copilot-cmp/blob/master/README.md#configuration
--     end, 100)
--   end,
-- })

-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   require "lsp_signature".on_attach()
-- end
