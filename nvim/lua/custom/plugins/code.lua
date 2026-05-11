return {
  {
    'romus204/tree-sitter-manager.nvim', -- :TSManager
    config = function()
      require('tree-sitter-manager').setup {
        ensure_installed = { 'go', 'lua', 'bash', 'html', 'svelte', 'markdown', 'c' },
        auto_install = true,
        highlight = true,
      }
    end,
  },

  -- Highlight todo, notes, etc in comments
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
  {
    'NMAC427/guess-indent.nvim', -- Detect tabstop and shiftwidth automatically
  },
}
