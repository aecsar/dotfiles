-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- * GENERAL CONFIG

lvim.transparent_window = true
lvim.colorscheme = "catppuccin-macchiato"

lvim.format_on_save.enabled = true
lvim.builtin.nvimtree.setup.view.side = "right"

lvim.builtin.illuminate.active = false
lvim.builtin.indentlines.active = false

-- * VIM VIM OPTIONS
require("user.options")

-- * MAPPINGS
require("user.keybindings")

-- * PLUGINS
require("user.plugins")
