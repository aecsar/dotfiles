return {
  'sindrets/diffview.nvim',
  keys = {
    { '<leader>gd', '<cmd>DiffviewOpen<cr>', desc = 'Open Diffview' },
    { '<leader>gD', '<cmd>DiffviewClose<cr>', desc = 'Close Diffview' },
  },
  config = function()
    require('diffview').setup {
      diff_binaries = false,
      enhanced_diff_hl = false, -- Set up hihglights in the hooks instead
      git_cmd = { 'git' },
      hg_cmd = { 'chg' },
      use_icons = true,
      show_help_hints = false,
      icons = {
        folder_closed = '',
        folder_open = '',
      },
      signs = {
        fold_closed = '',
        fold_open = '',
      },
      view = {
        default = {
          -- layout = "diff1_inline",
          disable_diagnostics = false,
          winbar_info = false,
        },
        merge_tool = {
          layout = 'diff3_mixed',
          disable_diagnostics = true,
          winbar_info = true,
        },
        file_history = {
          -- layout = "diff1_inline",
          disable_diagnostics = false,
          winbar_info = false,
        },
      },
      file_panel = {
        listing_style = 'tree',
        tree_options = {
          flatten_dirs = true,
          folder_statuses = 'only_folded',
        },
        win_config = function()
          local editor_width = vim.o.columns
          return {
            position = 'left',
            width = editor_width >= 247 and 45 or 35,
          }
        end,
      },
      file_history_panel = {
        log_options = {
          git = {
            single_file = {
              diff_merges = 'first-parent',
              follow = true,
            },
            multi_file = {
              diff_merges = 'first-parent',
            },
          },
        },
        win_config = {
          position = 'bottom',
          height = 16,
        },
      },
      default_args = {
        DiffviewOpen = {},
        DiffviewFileHistory = {},
      },
      hooks = {
        diff_buf_read = function()
          vim.opt_local.wrap = false
        end,
        ---@diagnostic disable-next-line: unused-local
        diff_buf_win_enter = function(bufnr, winid, ctx)
          -- Turn off cursor line for diffview windows because of bg conflict
          -- https://github.com/neovim/neovim/issues/9800
          vim.wo[winid].culopt = 'number'
          -- Highlight 'DiffChange' as 'DiffDelete' on the left, and 'DiffAdd' on
          -- the right.
          if ctx.layout_name:match '^diff2' then
            if ctx.symbol == 'a' then
              vim.opt_local.winhl = table.concat({
                'DiffAdd:DiffviewDiffAddAsDelete',
                'DiffDelete:DiffviewDiffDelete',
                'DiffChange:DiffAddAsDelete',
                'DiffText:DiffDeleteText',
              }, ',')
            elseif ctx.symbol == 'b' then
              vim.opt_local.winhl = table.concat({
                'DiffDelete:DiffviewDiffDelete',
                'DiffChange:DiffAdd',
                'DiffText:DiffAddText',
              }, ',')
            end
          end
        end,
      },
    }
  end,
}
