-- * KEYMAPPINGS

lvim.builtin.which_key.mappings["t"] = {
  "<cmd>ToggleTerm direction=float<CR>", "Toggle floating terminal"
}

-- lvim.builtin.which_key.mappings["s"] = {
--   name = "Surround",
--   s = {
--     name = "Surround Add",
--     i = { "ysiw)", "Surround inner word with ()" },
--     w = { "ysiw", "Surround word" },
--     ["$"] = { 'ys$"', 'Surround to end of line with ""' },
--   },
--   d = {
--     name = "Delete",
--     s = { "ds", "Delete surrounding" },
--     t = { "dst", "Delete HTML tag" },
--     f = { "dsf", "Delete surrounding function call" },
--   },
--   c = {
--     name = "Change",
--     s = { "cs", "Change surrounding" },
--     t = { "cst", "Change HTML tag" },
--     ["'"] = { 'cs\'"', "Change ' to \"" },
--     ['"'] = { "cs\"'", "Change \" to '" },
--     ["h"] = { "csth1<CR>", "Change tag to <h1>" },
--   },
-- }

lvim.builtin.which_key.mappings["s"]["S"] = {
  name = "Surround",
  s = {
    name = "Surround Add",
    i = { "ysiw)", "Inner word with ()" },
    w = { "ysiw", "Word" },
    ["$"] = { 'ys$"', 'To end of line with ""' },
  },
  d = {
    name = "Delete",
    s = { "ds", "Delete surrounding" },
    t = { "dst", "Delete HTML tag" },
    f = { "dsf", "Delete function call" },
  },
  c = {
    name = "Change",
    s = { "cs", "Change surrounding" },
    t = { "cst", "Change HTML tag" },
    ["'"] = { 'cs\'"', "' to \"" },
    ['"'] = { "cs\"'", "\" to '" },
    ["h"] = { "csth1<CR>", "Tag to <h1>" },
  },
}
