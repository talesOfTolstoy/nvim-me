require("windows").setup({
   autowidth = {			--		       |windows.autowidth|
      enable = true,
      winwidth = 5,			--		        |windows.winwidth|
      filetype = {			--	      |windows.autowidth.filetype|
         help = 2,
      },
   },
   ignore = {				--			  |windows.ignore|
      buftype = { "quickfix" },
      filetype = { "NvimTree", "neo-tree", "undotree", "gundo", "sidebar"}
   },
   animation = {
      enable = true,
      duration = 300,
      fps = 30,
      easing = "in_out_sine"
   }
})
