return {
	'nvim-telescope/telescope.nvim',
	cmd = "Telescope",
	config = function ()
		require 'telescope'.setup {
			vimgrep_argument = { '--hidden', '--glob', '!**/.git/*', '-L' },
			pickers = {
				find_files = {
					-- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
					find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*", "-L" },
				},
			},
		}
	end,
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{'<leader>pf',  function () require 'telescope.builtin'.find_files() end, desc = "Find files in directory"},
		--{'<leader>h',  function () require 'telescope.builtin'.help_tags() end, desc = "Help for finding functions"},
		{'<leader>mp',  function () require 'telescope.builtin'.man_pages() end, desc = "Search man pages"},
	},
}
