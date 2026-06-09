-- Line number
vim.o.relativenumber = true
vim.o.number = true

-- Tab spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Default split direction
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Search Patterns
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Status Line
vim.opt.laststatus = 3

-- Undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true

-- Clipboard
vim.opt.clipboard:append("unnamedplus")
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	callback = function()
		vim.hl.on_yank()
	end,
})

-- Layout
vim.opt.winborder = "rounded"
vim.opt.colorcolumn = "80"
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
