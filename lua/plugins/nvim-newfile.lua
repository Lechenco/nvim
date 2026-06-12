return {
	"adibhanna/nvim-newfile.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("nvim-newfile").setup({
			-- Optional configuration
		})
		vim.keymap.set("n", "<leader>nf", ":NewFile<CR>", { desc = "Create new file" })
		vim.keymap.set("n", "<leader>nn", ":NewFileHere<CR>", { desc = "Create new file here" })
	end,
}
