-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- * GENERAL CONFIG

lvim.transparent_window = true
lvim.colorscheme = "tokyonight-night"

lvim.format_on_save.enabled = true
lvim.builtin.nvimtree.setup.view.side = "right"

lvim.builtin.indentlines.active = false
-- lvim.builtin.indentlines.options.show_current_context = false
lvim.builtin.telescope.theme = "center"

-- require("mason").setup()
-- require("mason-lspconfig").setup {
--   ensure_installed = { "lua_ls", "rust_analyzer", "gopls" },
-- }

-- * VIM VIM OPTIONS
require("user.options")

-- * MAPPINGS
require("user.keybindings")

-- * PLUGINS
require("user.plugins")

-- require 'lspconfig'.denols.setup {}
-- local nvim_lsp = require('lspconfig')
-- nvim_lsp.denols.setup {
--   on_attach = on_attach,
--   root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
-- }

-- -- display deno code fences
-- vim.g.markdown_fenced_languages = {
--   "ts=typescript"
-- }
