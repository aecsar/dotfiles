-- * Neovim and Vim settings

-- vim.cmd("set colorcolumn=150")
vim.cmd("set textwidth=100")
-- vim.cmd("set wrap")
-- vim.cmd("set showbreak=↪")
-- vim.cmd("set linebreak")
vim.cmd("set nofoldenable")
-- vim.cmd("autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.ts,*.tsx Neoformat")

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*.js", "*.jsx", "*.ts", "*.tsx" },
  command = "Neoformat"
})

-- vim.opt.fillchars:append { eob = " " }
-- vim.opt.fillchars = { vert = " " }

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<A-j>', ":m .+1<CR>==", opts)
vim.keymap.set('n', '<A-k>', ":m .-2<CR>==", opts)
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", opts)
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", opts)

local lspconfig = require('lspconfig')
local configs = require('lspconfig/configs')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.emmet_ls.setup({
  -- on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug", "typescriptreact", "vue" },
  init_options = {
    html = {
      options = {
        -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
        ["bem.enabled"] = true,
      },
    },
  }
})
