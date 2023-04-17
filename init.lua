-- -- Open slim UndotreeToggle window on the top-right of the screen upon start
-- vim.api.nvim_command('autocmd VimEnter * UndotreeToggle')
-- vim.api.nvim_command('autocmd VimEnter * wincmd L')
-- vim.api.nvim_command('autocmd VimEnter * wincmd p')
-- vim.api.nvim_command('autocmd VimEnter * wincmd J')
-- vim.api.nvim_command('autocmd VimEnter * wincmd H')
-- vim.api.nvim_command('autocmd VimEnter * wincmd K')
-- vim.api.nvim_command('autocmd VimEnter * wincmd L')
-- vim.api.nvim_command('autocmd VimEnter * wincmd p')

-- Open a new vertical split window with the terminal and set it as the main window
-- vim.api.nvim_command('autocmd VimEnter * split term://$SHELL')
-- vim.api.nvim_command('autocmd VimEnter * wincmd H')
-- vim.api.nvim_command('autocmd VimEnter * wincmd p')
-- 

require("inside")
require("inside.remap")
