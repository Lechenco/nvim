-- plugins/telescope.lua:
return {
	"nvim-telescope/telescope.nvim", --tag = '0.1.8',
	-- or                              , branch = '0.1.x',
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local telescope = require("telescope")

		telescope.setup({
			defaults = {
				path_display = { truncate = 6 },
			},
		})
		-- set keymaps
		vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files sort_mru=true <cr>", {})
		vim.keymap.set("n", "<leader><leader>", "<cmd>Telescope buffers sort_mru=true ignore_current_buffer=true<cr>", {})
		vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", {})
		vim.keymap.set("n", "<leader>fs", "<cmd>Telescope git_status<cr>", {})
		vim.keymap.set("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", {})
		vim.keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics<cr>", {})
	end,
}
