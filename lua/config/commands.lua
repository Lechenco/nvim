-- Golang
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.go",
	callback = function()
		vim.lsp.buf.code_action({
			context = { only = { "source.organizeImports" } }, -- remove unused imports on save file
			apply = true,
		})
	end,
})

-- Tags
vim.api.nvim_create_user_command("LookThisTag", function()
	local text = vim.fn.expand("<cword>")
	require("telescope.builtin").tags({ default_text = text })
end, {
	desc = "Show all cases of tag under the cursor",
})
