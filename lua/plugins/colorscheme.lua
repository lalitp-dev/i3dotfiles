return {
	-- {
	-- 	"sainnhe/sonokai",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.g.sonokai_transparent_background = "1"
	-- 		vim.g.sonokai_enable_italic = "1"
	-- 		vim.g.sonokai_style = "andromeda"
	-- 		vim.cmd.colorscheme("sonokai")
	-- 	end,
	-- },
	-- {
	-- 	"Mofiqul/vscode.nvim",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd.colorscheme("vscode")
	-- 	end,
	-- },
	{
		"sainnhe/gruvbox-material",
		priority = 1000,
		config = function()
			-- vim.cmd.colorscheme("gruvbox-material")
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		config = function()
			-- vim.cmd.colorscheme("kanagawa")
		end,
	},
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		config = function()
			-- vim.cmd.colorscheme("tokyonight")
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},
}
