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
	{
		"Mofiqul/vscode.nvim",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("vscode")
		end,
	},
}
