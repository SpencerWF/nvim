local global = vim.g
local o = vim.opt

o.scrolloff = 999 -- Keep cursor in the middle of the screen while scrolling
o.number = true -- Print the line number in front of each line
o.relativenumber = true -- Show the line number relative to the current line
o.clipboard = "unnamedplus" -- Clipboard functionality
o.syntax = "on"
o.autoindent = true
o.cursorline = true -- Highlight the screen line of the cursor with Cursorline
o.expandtab = true -- In Insert mode: Use the appropriate number of spaces to insert a tab
o.shiftwidth = 2
o.tabstop = 2
o.encoding = "UTF-8"
o.ruler = true
o.mouse = "a"
o.title = true -- When on, the title of the window will be set to the value of 'titlestring'
o.hidden = true -- When on a buffer becomes hidden when it is |abandon|ed
o.ttimeoutlen = 0 -- The time in milliseconds that is waited for a key code or mapped key sequence to complete.
o.wildmenu = true -- When 'wildmenu' is on, command-line completion operates in an enhanced mode.
o.showcmd = true -- Show (partial) command in the last line of the screen. Set this option off if your terminal is slow.
o.showmatch = true -- When a bracket is inserted, briefly jump to the matching one.
o.inccommand = "split" -- When nonempty, shows the effects of :substitute, :smagic, :snomagic and user commands with the :command-preview flag as you type.
o.splitright = true
o.splitbelow = true -- When on, splitting a window will put the new window below the current one
o.termguicolors = true
o.ignorecase = true -- Built in command completion with tab ignores case

-- use Map() to map keys for convenience
function Map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end
 
-- Add keybinding to toggle nvim-tree
Map('n', '<leader>e', ':NvimTreeToggle<CR>')
 
-- Switch focus between windows using <leader>h, <leader>j, <leader>k, <leader>l
Map("n", "<C-h>", "<C-w>h")
Map("n", "<C-j>", "<C-w>j")
Map("n", "<C-k>", "<C-w>k")
Map("n", "<C-l>", "<C-w>l")
 
-- switch focus terminal
Map("t", "<C-h>", "<cmd>wincmd h<CR>")
Map("t", "<C-j>", "<cmd>wincmd j<CR>")
Map("t", "<C-k>", "<cmd>wincmd k<CR>")
Map("t", "<C-l>", "<cmd>wincmd l<CR>")
 
-- resize binds
Map("n", "<C-Up>", ":resize -2<CR>")
Map("n", "<C-Down>", ":resize +2<CR>")
Map("n", "<C-Left>", ":vertical resize -2<CR>")
Map("n", "<C-Right>", ":vertical resize +2<CR>")
 
-- resize terminal
Map("t", "<C-Up>", "<cmd>resize -2<CR>")
Map("t", "<C-Down>", "<cmd>resize +2<CR>")
Map("t", "<C-Left>", "<cmd>vertical resize -2<CR>")
Map("t", "<C-Right>", "<cmd>vertical resize +2<CR>")
 
Map("n", "<Esc>", "<cmd>noh<CR>")
