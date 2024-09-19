return { -- Nvim-Tree
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({})
		-- Nvim-Tree Config
		vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", {})
		vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>", {})
	end,
}
