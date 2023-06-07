-- Not really just keymaps. Other stuff too but cba to make a new lua
local o = vim.opt
local g = vim.g
local wo = vim.wo
-- remap leader
g.mapleader = " "
-- redo some keys
vim.keymap.set("n", "<leader>ww", vim.cmd.Ex)
vim.keymap.set("n", "<C-d>","<C-d>zz")
vim.keymap.set("n", "<C-u>","<C-u>zz")


vim.keymap.set("n", "tk", "<Cmd>tabprev<CR>")
vim.keymap.set("n", "tj", "<Cmd>tabnext<CR>")
vim.keymap.set("n", "td", "<Cmd>tabclose<CR>")

vim.keymap.set("n", "<leader>gg", "<Cmd>Git<CR><Cmd>resize 10<CR>")
-- vim.keymap.set("n",
vim.keymap.set("n","j","gj")
vim.keymap.set("n","k","gk")
-- use spaces for ttabs
o.tabstop = 4
o.shiftwidth = 4
o.shiftround = true
o.expandtab = true

o.ignorecase = true
o.smartcase = true
o.hlsearch = true
o.mouse = "a"

o.laststatus = 3
-- line numbers
o.number = true
o.ruler = false

o.title = true
o.list = true
o.listchars = { tab = '▸ ', trail = '·' }

-- movement
vim.keymap.set("n","<C-j>", "<C-W>j")
vim.keymap.set("n","<C-k>", "<C-W>k")
vim.keymap.set("n","<C-h>", "<C-W>h")
vim.keymap.set("n","<C-l>", "<C-W>l")

vim.keymap.set("n","<C-Left>", "<Cmd>TmuxNavigateLeft<cr>",{silent = true})
vim.keymap.set("n","<C-Down>" ,"<Cmd>TmuxNavigateDown<cr>",{silent = true})
vim.keymap.set("n","<C-Up>","<Cmd>TmuxNavigateUp<cr>",{silent = true})
vim.keymap.set("n","<C-Right>" ,"<Cmd>TmuxNavigateRight<cr>",{silent = true})
vim.keymap.set("n","<C-\\>" ,"<Cmd>TuxNavigatePrevious<cr>",{silent = true})
