vim.g.mapleader = ","

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- next greatest remap ever : asbjornHaland
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

vim.keymap.set("n", "tn", ":tabnew<CR>")

vim.keymap.set("n", "tk", ":tabnext<CR>")
vim.keymap.set("n", "tj", ":tabprev<CR>")

vim.keymap.set("n", "th", ":tabfirst<CR>")
vim.keymap.set("n", "tl", ":tablast<CR>")

vim.keymap.set("n", "tsj", ":split<CR>")
vim.keymap.set("n", "tsl", ":vsplit<CR>")

vim.keymap.set("i", "<leader>'", "''<ESC>i")
vim.keymap.set("i", '<leader>"', '""<ESC>i')
vim.keymap.set("i", "<leader>(", "()<ESC>i")
vim.keymap.set("i", "<leader>[", "[]<ESC>i")
vim.keymap.set("i", "<leader><", "<><ESC>i")
vim.keymap.set("i", "<leader>{", "{}<ESC>i")
vim.keymap.set("i", "<leader>}", "{}<ESC>i<CR><ESC><S-O>")
vim.keymap.set("i", "<leader>;}", "{};<ESC>hi<CR><ESC><S-O>")


vim.keymap.set("i", '<leader>f"', 'f""<ESC>i')
vim.keymap.set("i", "<leader>f'", "f''<ESC>i")
