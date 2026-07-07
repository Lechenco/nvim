vim.g.mapleader = " "

-- Copy / Paste
vim.keymap.set("x", "p", [["_dP]], { desc = "Paste over selection without losing yanked text" })

-- Selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })

-- Search
vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Clear search highlighting", silent = true })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result cursor centered" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result cursor centered" })

-- Join lines
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines without moving cursor" })

-- Insert mode
vim.keymap.set("i", "<C-BS>", "<C-W>", { desc = "Delete word backward" })
vim.keymap.set("i", "<C-H>", "<C-W>", { desc = "Delete word backward" })

-- Movements
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "move down in buffer with cursor centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "move up in buffer with cursor centered" })
vim.keymap.set("n", "n", "nzz", { desc = "move to next occurrence with cursor centered" })
vim.keymap.set("n", "N", "Nzz", { desc = "move to previous occurrence with cursor centered" })
vim.keymap.set("n", "<C-o>", "<C-o>zz", { desc = "move to previous buffer position with cursor centered" })
vim.keymap.set("n", "<C-i>", "<C-i>zz", { desc = "move to next buffer position with cursor centered" })
vim.keymap.set("n", "G", "Gzz", { desc = "move to end of buffer with cursor centered" })
-- vim.keymap.set("n", "j", "jzz", { desc = "move down on line buffer with cursor centered" })
-- vim.keymap.set("n", "k", "kzz", { desc = "move up on line buffer with cursor centered" })

-- Netwr
vim.keymap.set("n", "<leader>e", "<cmd> Explore<CR>", { desc = "Open File Explorer" })

-- Buffers
vim.keymap.set("n", "<A-q>", "<cmd> :bd<CR>", { desc = "Close Current Buffer" })
vim.keymap.set("n", "<A-Q>", "<cmd> :%bd|e#|bd#<CR>", { desc = "Close All except Current Buffer" })

-- Tags
vim.keymap.set("n", "<leader>tt", "<cmd> :silent !ctags -R . <CR>:redraw!<CR>")
vim.keymap.set("n", "<leader>gt", "<cmd> :LookThisTag<CR>", { desc = "Search Tag under the cursor" })

-- Terminal
vim.keymap.set("t", "<C-\\>", "<C-\\><C-n>", {desc = "Exit from terminal mode" })
vim.keymap.set("n", "<C-t>", "<cmd> :split <CR> :resize 20 <CR> :terminal<CR>", {desc = "Open new terminal buffer" })
