-- nnoremap <F5> :UndotreeToggle<CR> turned into:;
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)


--require('undotree').setup({
--    open = true,
--    side = "right",
--    initial_width = 35,
--    hide_statusline = false,
--})

---- Automatically open undotree
-- vim.cmd("autocmd UndotreeToggle")
-- vim.cmd("autocmd wincmd R")
--
---- Set undotree width to 30 columns
--vim.g.undotree_WindowLayout =  { { relative = 'win', width = 30, height = 15, row = 1, col = 1 } }
--
-- Define function to open undotree on the right side of the screen
function open_undotree()
  vim.cmd('UndotreeToggle')
  vim.cmd('vert botright split')
  vim.g.undotree_WindowLayout =  { { relative = 'win', width = 30, height = 15, row = 1, col = 1 } }
end
--
---- Open undotree on startup
-- vim.api.nvim_command(autocmd 'UndotreeToggle')
-- vim.api.nvim_command(autocmd 'wincmd R')
--
