return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				section_separators = { left = " ", right = " " },
				component_separators = { left = " ", right = " " },
				theme = {
					normal = {
						a = { bg = 4, fg = 15, gui = "bold" },
						b = { bg = 4, fg = 15 },
						c = { bg = 14, fg = 8 },
					},
					insert = {
						a = { bg = 2, fg = 15, gui = "bold" },
						b = { bg = 2, fg = 15 },
						c = { bg = 14, fg = 8 },
					},
					visual = {
						a = { bg = 3, fg = 15, gui = "bold" },
						b = { bg = 3, fg = 15 },
						c = { bg = 14, fg = 8 },
					},
					replace = {
						a = { bg = 3, fg = 15, gui = "bold" },
						b = { bg = 3, fg = 15 },
						c = { bg = 14, fg = 8 },
					},
					command = {
						a = { bg = 5, fg = 15, gui = "bold" },
						b = { bg = 5, fg = 15 },
						c = { bg = 14, fg = 8 },
					},
					inactive = {
						a = { bg = 0, fg = 15, gui = "bold" },
						b = { bg = 0, fg = 7 },
						c = { bg = 8, fg = 7 },
					},
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = {
					{
						"filename",
						path = 1,
					},
				},
				lualine_x = { "encoding" },
				lualine_y = { "filetype", "progress" },
				lualine_z = { "location" },
			},
		})
	end,
}
