-- the below configs add integration with vim-fugitive (for git)

vim.g.lightline = {
	active = {
		left = {
			{ 'mode', 'past' },
			{ 'gitbranch', 'filename', 'modified' }
		}
	},
	component_function = {
		gitbranch = 'fugitive#head'
	}
}
