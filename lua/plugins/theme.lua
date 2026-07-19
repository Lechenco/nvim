return {
    'smlx/nocte',
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
        vim.cmd.colorscheme('nocte')

        -- Custom colors 
        vim.api.nvim_set_hl(0, 'Directory', { ctermfg = 6 })
        vim.api.nvim_set_hl(0, 'Folded', { ctermfg = 15, ctermbg = 5 })
        vim.api.nvim_set_hl(0, 'TabLineSel', { ctermfg = 15, ctermbg = 5 })
        vim.api.nvim_set_hl(0, 'CursorLine', { ctermfg = 15, ctermbg = 5 })
        vim.api.nvim_set_hl(0, 'ColorColumn', { ctermfg = 15, ctermbg = 3 })
        vim.api.nvim_set_hl(0, 'Type', { ctermfg = 13 })
        vim.api.nvim_set_hl(0, 'Boolean', { ctermfg = 10 })
        vim.api.nvim_set_hl(0, 'Function', { ctermfg = 6 })
        vim.api.nvim_set_hl(0, 'Number', { ctermfg = 10 })
        vim.api.nvim_set_hl(0, 'Pmenu', { ctermfg = 15 })
        vim.api.nvim_set_hl(0, 'PmenuSel', { ctermfg = 15, ctermbg = 5 })
        vim.api.nvim_set_hl(0, 'VertSplit', { })

        vim.api.nvim_set_hl(0, 'TelescopeSelection', { ctermfg = 15, ctermbg = 5 })
    end,
}
