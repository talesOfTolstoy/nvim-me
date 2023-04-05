require'lualine'.setup {
	options = {
		theme = 'auto',
		component_separators = {left = ' - ', right = ' - '},
		section_separators = {left = ' || ', right = ' || '},	
		sections = {
			lualine_b = {'branch', 'diff', 'diagnostics'},
			lualine_x = {'encoding','os_icon' , 'filetype'},
		},
	}
}

