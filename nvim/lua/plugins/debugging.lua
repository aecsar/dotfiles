return {
  {
    "mfussenegger/nvim-dap",

    dependencies = {

      -- fancy UI for the debugger
      {
        "rcarriga/nvim-dap-ui",
      -- stylua: ignore
      dependencies = {
        { "nvim-neotest/nvim-nio" }
      },
        keys = {
          {
            "<leader>du",
            function()
              require("dapui").toggle {}
            end,
            desc = "Dap UI",
          },
          {
            "<leader>de",
            function()
              require("dapui").eval()
            end,
            desc = "Eval",
            mode = { "n", "v" },
          },
        },
        opts = {},
        config = function(_, opts)
          -- setup dap config by VsCode launch.json file
          -- require("dap.ext.vscode").load_launchjs()
          local dap = require "dap"
          local dapui = require "dapui"

          dap.adapters.delve = function(callback, config)
            if config.mode == "remote" and config.request == "attach" then
              callback {
                type = "server",
                host = config.host or "127.0.0.1",
                port = config.port or "38697",
              }
            else
              callback {
                type = "server",
                port = "${port}",
                executable = {
                  command = "dlv",
                  args = { "dap", "-l", "127.0.0.1:${port}", "--log", "--log-output=dap" },
                  detached = vim.fn.has "win32" == 0,
                },
              }
            end
          end

          dap.configurations.go = {
            {
              type = "delve",
              name = "Debug",
              request = "launch",
              program = "${file}",
            },
            {
              type = "delve",
              name = "Debug test", -- configuration for debugging test files
              request = "launch",
              mode = "test",
              program = "${file}",
            },
            -- works with go.mod packages and sub packages
            {
              type = "delve",
              name = "Debug test (go.mod)",
              request = "launch",
              mode = "test",
              program = "./${relativeFileDirname}",
            },
          }

          dapui.setup(opts)
          dap.listeners.after.event_initialized["dapui_config"] = function()
            dapui.open {}
          end
          dap.listeners.before.event_terminated["dapui_config"] = function()
            dapui.close {}
          end
          dap.listeners.before.event_exited["dapui_config"] = function()
            dapui.close {}
          end
        end,
      },

      -- virtual text for the debugger
      {
        "theHamsta/nvim-dap-virtual-text",
        opts = {},
      },

      -- which key integration
      -- {
      --   "folke/which-key.nvim",
      --   optional = true,
      --   opts = {
      --     defaults = {
      --       ["<leader>d"] = { name = "+debug" },
      --     },
      --   },
      -- },

      -- mason.nvim integration
      {
        "jay-babu/mason-nvim-dap.nvim",
        dependencies = "mason.nvim",
        cmd = { "DapInstall", "DapUninstall" },
        opts = {
          -- Makes a best effort to setup the various debuggers with
          -- reasonable debug configurations
          automatic_installation = true,

          -- You can provide additional configuration to the handlers,
          -- see mason-nvim-dap README for more information
          handlers = {},

          -- You'll need to check that you have the required things installed
          -- online, please don't ask me how to install them :)
          ensure_installed = {
            -- Update this to ensure that you have the debuggers for the langs you want
          },
        },
      },
    },

  -- stylua: ignore
  keys = {
    { "<leader>dB", function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, desc = "Breakpoint Condition" },
    { "<leader>db", function() require("dap").toggle_breakpoint() end, desc = "Toggle Breakpoint" },
    { "<leader>dc", function() require("dap").continue() end, desc = "Continue" },
    { "<leader>da", function() require("dap").continue({ before = get_args }) end, desc = "Run with Args" },
    { "<leader>dC", function() require("dap").run_to_cursor() end, desc = "Run to Cursor" },
    { "<leader>dg", function() require("dap").goto_() end, desc = "Go to line (no execute)" },
    { "<leader>dl", function() require("dap").step_into() end, desc = "Step Into" },
    -- { "<leader>dj", function() require("dap").down() end, desc = "Down" },
    -- { "<leader>dk", function() require("dap").up() end, desc = "Up" },
    -- { "<leader>dl", function() require("dap").run_last() end, desc = "Run Last" },
    { "<leader>dk", function() require("dap").step_out() end, desc = "Step Out" },
    { "<leader>dj", function() require("dap").step_over() end, desc = "Step Over" },
    { "<leader>dp", function() require("dap").pause() end, desc = "Pause" },
    { "<leader>dr", function() require("dap").repl.toggle() end, desc = "Toggle REPL" },
    { "<leader>ds", function() require("dap").session() end, desc = "Session" },
    { "<leader>dt", function() require("dap").terminate() end, desc = "Terminate" },
    { "<leader>di", function() require("dap.ui.widgets").hover() end, desc = "Widgets" },
  },
  },
  { "leoluz/nvim-dap-go" },
}
