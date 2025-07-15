return {
  {
    'leath-dub/snipe.nvim',
    keys = {
      {
        'gb',
        function()
          require('snipe').open_buffer_menu()
        end,
        desc = 'Open Snipe buffer menu',
      },
    },
    opts = {},
  },
  {
    'ggandor/leap.nvim',
    name = 'leap',
    config = function()
      require('leap').add_default_mappings()
    end,
  },
}
