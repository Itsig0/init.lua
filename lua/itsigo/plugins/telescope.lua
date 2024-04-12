return {
	'nvim-telescope/telescope.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },

	keys = {
		{ "<leader>pf", function() require("telescope.builtin").find_files() end, desc="Find: Files" },	
		{ "<C-p>", function() require("telescope.builtin").git_files() end, desc="Find: Git Files" },	
		{ "<leader>ps", function()
			require("telescope.builtin").grep_string({search = vim.fn.input("Grep > ")}) 
		end, desc="Find: Files" },	
	},

}
