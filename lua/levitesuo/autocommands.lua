local autocmd = vim.api.nvim_create_autocmd
local user_cmd = vim.api.nvim_create_user_command

-- rewrite all augroups using tis function
local function augroup(name)
	return vim.api.nvim_create_augroup("levitesuo-lazyvim_" .. name, { clear = true })
end

-- augroup('buf_empty', { clear = true })
autocmd({ "BufEnter" }, {
	group = augroup("buf_enter"),
	pattern = { "" },
	callback = function()
		local buf_ft = vim.bo.filetype
		if buf_ft == "" or buf_ft == nil then
			vim.keymap.set("n", "<leader>q", "<cmd>close<cr>", { buffer = true, silent = true })
		end
	end,
})

autocmd({ "WinEnter" }, {
	group = augroup("WindowHighlighter"),
	callback = function()
		local dfg = "#625e5a"
		local bfg = "#c5c9c5"

		local bg = "#12120f"
		vim.api.nvim_set_hl(0, "Normal", { fg = bfg, bg = bg })
		vim.api.nvim_set_hl(0, "NormalNC", { fg = dfg, bg = bg })
	end,
})
