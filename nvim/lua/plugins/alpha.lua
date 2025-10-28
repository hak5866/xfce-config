return 
{
	"goolord/alpha-nvim",
	dependencies = {
		"echasnovski/mini.icons",
	},
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		dashboard.section.header.val = {



			"███████╗ ██████╗ ██╗     ███████╗████████╗██████╗ ",
			"██╔════╝██╔═══██╗██║     ██╔════╝╚══██╔══╝██╔══██╗",
			"███████╗██║   ██║██║     █████╗     ██║   ██████╔╝",
			"╚════██║██║   ██║██║     ██╔══╝     ██║   ██╔══██╗",
			"███████║╚██████╔╝███████╗███████╗   ██║   ██║  ██║",
			"╚══════╝ ╚═════╝ ╚══════╝╚══════╝   ╚═╝   ╚═╝  ╚═╝",
			"                                                  ",
		}
		dashboard.section.buttons.val ={
			dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "󰍉  Find file", ":lua require('fzf-lua').files() <CR>"),
			dashboard.button("b", "  Browse", ":NvimTreeOpen<CR>"),
			dashboard.button("c", "  Config", ":e ~/.config/nvim/<CR>"),
			dashboard.button("q", "󰅙  Quit", ":q!<CR>"),

		}
		dashboard.section.footer.val = {
			" Hello World! ",
		}
		dashboard.section.buttons.opts.hl = "Keyword"
		dashboard.opts.opts.noautocmd = true 

		dashboard.config.layout = {
			{ type = "padding", val = 2 },
			dashboard.section.header,
			{ type = "padding", val = 2 },
			dashboard.section.buttons,
			{ type = "padding", val = 2 },
			dashboard.section.footer

		}
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
		alpha.setup(dashboard.opts)

	end,
}
