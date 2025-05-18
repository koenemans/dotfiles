return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
	enabled = false,
	config = function()
		vim.cmd[[colorscheme tokyonight-night]]
	end
}
