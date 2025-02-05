vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("s.lazy")
require("s.settings")
require("nvim-tree").setup()
require("Comment").setup()
vim.opt.clipboard = "unnamedplus"
