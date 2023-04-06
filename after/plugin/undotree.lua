-- nnoremap <F5> :UndotreeToggle<CR> turned into:;
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

---- Automatically open undotree
--vim.cmd([[autocmd UndotreeToggle]])
--
---- Set undotree width to 30 columns
--vim.g.undotree_WindowLayout =  { { relative = 'win', width = 30, height = 15, row = 1, col = 1 } }
--
-- Define function to open undotree on the right side of the screen
--function open_undotree()
--  vim.cmd('UndotreeToggle')
--  vim.cmd('wincmd R')
--end
--
---- Open undotree on startup
--vim.api.nvim_command('UndotreeToggle')
--vim.api.nvim_command('wincmd R')
--
