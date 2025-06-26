return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        shade_terminals = false,
        vim.keymap.set('n', '<leader>o', '<cmd>ToggleTerm direction=float<CR>', { desc = 'Open floating terminal' }),
      }
    end,
  },
}
