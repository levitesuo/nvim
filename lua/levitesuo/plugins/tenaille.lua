return { -- plugin spec
	"doums/tenaille.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local tenaille = require("tenaille")
		-- Default config
		tenaille.setup({
			default_mapping = false,
			pairs = {
				{ '"', '"' },
				{ "'", "'" },
				{ "`", "`" },
				{ "{", "}" },
				{ "[", "]" },
				{ "(", ")" },
				{ "<", ">" },
			},
		})

		local wrap = require("tenaille").wrap

		vim.keymap.set("v", '<leader>"', function()
			wrap({ '"', '"' })
		end)

		vim.keymap.set("v", "<leader>(", function()
			wrap({ "(", ")" })
		end)

		vim.keymap.set("v", "<leader>[", function()
			wrap({ "[", "]" })
		end)

		vim.keymap.set("v", "<leader>{", function()
			wrap({ "{", "}" })
		end)

		vim.keymap.set("v", "<leader><", function()
			wrap({ "<", ">" })
		end)

		vim.keymap.set("v", "<leader>`", function()
			wrap({ "`", "`" })
		end)
	end,
}
