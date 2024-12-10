require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local builtin = require "telescope.builtin"

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<ScrollWheelUp>", "<Down>")
map("n", "<ScrollWheelDown>", "<Up>")
map("n", "<ScrollWheelLeft>", "<Left>")
map("n", "<ScrollWheelRight>", "<Right>")
map("i", "<ScrollWheelUp>", "<Down>")
map("i", "<ScrollWheelDown>", "<Up>")
map("i", "<ScrollWheelLeft>", "<Left>")
map("i", "<ScrollWheelRight>", "<Right>")
map("v", "<ScrollWheelUp>", "<Down>")
map("v", "<ScrollWheelDown>", "<Up>")
map("v", "<ScrollWheelLeft>", "<Left>")
map("v", "<ScrollWheelRight>", "<Right>")
map("n", "<leader>rw", vim.lsp.buf.workspace_symbol)
map("n", "<leader>re", vim.lsp.buf.code_action)
map("n", "<leader>rr", vim.lsp.buf.references)
map("n", "<leader>rn", vim.lsp.buf.rename)
map("n", "<leader>rg", builtin.live_grep, {})
-- length of an actual \t character:
vim.opt.tabstop = 2
-- length to use when editing text (eg. TAB and BS keys)
-- (0 for ‘tabstop’, -1 for ‘shiftwidth’):
vim.opt.softtabstop = -1
-- length to use when shifting text (eg. <<, >> and == commands)
-- (0 for ‘tabstop’):
vim.opt.shiftwidth = 0
-- round indentation to multiples of 'shiftwidth' when shifting text
-- (so that it behaves like Ctrl-D / Ctrl-T):
-- vim.opt.shiftrounded=true

-- if set, only insert spaces; otherwise insert \t and complete with spaces:
-- vim.opt.expandtab

-- reproduce the indentation of the previous line:
vim.opt.autoindent = true
-- keep indentation produced by 'autoindent' if leaving the line blank:
-- vim.opt.cpoptions='I'
-- try to be smart (increase the indenting level after ‘{’,
-- decrease it after ‘}’, and so on):
vim.opt.smartindent = true
--  a stricter alternative which works better for the C language:
vim.opt.cindent = true
-- use language‐specific plugins for indenting (better):
-- vim.filetype plugin indent on
vim.g.tabby_inline_completion_keybinding_accept = "<leader><Tab>"
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
