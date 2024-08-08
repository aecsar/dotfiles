-- * Neovim and Vim settings

-- vim.cmd("set colorcolumn=150")
vim.cmd("set textwidth=100")
vim.cmd("set linebreak")

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<A-j>', ":m .+1<CR>==", opts)
vim.keymap.set('n', '<A-k>', ":m .-2<CR>==", opts)
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", opts)
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", opts)
