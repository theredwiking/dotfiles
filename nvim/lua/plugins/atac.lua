return {
	"NachoNievaG/atac.nvim",
	dependencies = { "akinsho/toggleterm.nvim" },
	config = function()
		require("atac").setup({
			dir = "~/api-docs",
	})
	end,
}
