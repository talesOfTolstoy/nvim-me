-- function OpenTerminal()
--   local buf = vim.fn.termopen('zsh')
--   local width = math.floor(vim.o.columns * 0.8)
--   local height = math.floor(vim.o.lines * 0.5)
--   local row = math.floor((vim.o.lines - height) / 2)
--   local col = math.floor((vim.o.columns - width) / 2)
--   local cur_win = vim.api.nvim_get_current_win()
--   local cur_win_opts = vim.api.nvim_win_get_config(cur_win)
--   local opts = {
--     relative = 'win',
--     width = width,
--     height = height,
--     row = row,
--     col = col,
--     style = 'minimal',
--     border = 'single',
--     focusable = false,
--     split = cur_win_opts.width >= width and 'right' or 'below',
--   }
--   vim.api.nvim_open_win(buf, true, opts)
-- end
-- 
-- vim.cmd([[command! OpenTerminal lua OpenTerminal()]])
-- 
-- vim.api.nvim_set_keymap('n', '<leader>ot', ':OpenTerminal<CR>', { noremap = true })


-----------------------------------------------------------


-- local function open_terminal()
--  local bufnr = vim.api.nvim_get_current_buf()
--  local winid = vim.api.nvim_get_current_win()
--  local width = vim.api.nvim_win_get_width(winid)
--  local height = 10 -- Set the height to 10 lines
--  local cmd = 'term'
--  local opts = {
--    cwd = vim.fn.expand('%:p:h'), -- Set the working directory to the current file's directory
--    direction = 'botright',
--    height = height,
--    width = width,
--    style = 'minimal'
--  }
--  local new_winid = vim.api.nvim_open_win(bufnr, true, opts)
--  vim.api.nvim_win_set_option(new_winid, 'number', false) -- Disable line numbers in the terminal window
--  vim.cmd('startinsert!') -- Start insert mode in the terminal window
--end
--
---- Create the command
--vim.cmd('command! OpenTerminal lua open_terminal()')
--
---- Map the command to a key binding
--vim.api.nvim_set_keymap('n', '<leader>ot', ':OpenTerminal<CR>', { noremap = true, silent = true })


-------------------------------------------------------------

-- Open the terminal window with <leader>t
 vim.api.nvim_set_keymap('n', '<leader>ot', ':botright split term://$SHELL<CR>', { noremap = true, silent = true })

 -- Set up autocommands for terminal window
 vim.cmd([[
   autocmd! TermOpen * startinsert
   autocmd! TermOpen * setlocal nonumber
   autocmd! TermOpen * tnoremap <Esc> <C-\><C-n>
   autocmd! TermOpen * tnoremap <C-d> <C-\><C-n>:q!<CR>
   autocmd! TermOpen * tnoremap <leader>q <C-\><C-n>:q!<CR>
 ]])



-- -- get the width of the sidebar
-- local sidebar_width = vim.g.sidebar_width or 30
-- 
-- -- get the height of the statusline
-- local statusline_height = vim.o.laststatus == 0 and 0 or 1
-- 
-- -- get the available space for the new window
-- local available_width = vim.o.columns - sidebar_width
-- local available_height = vim.o.lines - statusline_height
-- 
-- -- set the size and position of the new window
-- local width = math.floor(available_width * 0.7)
-- local height = math.floor(available_height * 0.5)
-- local row = math.floor(available_height * 0.5)
-- local col = sidebar_width + math.floor((available_width - width) * math.random())
-- 
-- -- create the new window and set its size and position
-- vim.cmd("botright vsplit")
-- vim.cmd(string.format("resize %d", height))
-- vim.cmd(string.format("move %d", row))
-- vim.cmd(string.format("vertical resize %d", width))
-- vim.cmd(string.format("wincmd l"))


-------------------------------------------------------------


-- -- Define the height of the terminal split window
-- local terminal_height = 10
-- 
-- -- Open the terminal in a new horizontal split window with fixed height in the current buffer's window
-- vim.api.nvim_set_keymap('n', '<leader>ot', ':botright split term://$SHELL<CR>', { noremap = true, silent = true })
-- 
-- -- Define a function to open the terminal window
-- local M = {}
-- 
-- M.open_terminal = function()
--   -- Save the current window and buffer
--   local current_win = vim.api.nvim_get_current_win()
--   local current_buf = vim.api.nvim_get_current_buf()
-- 
--   -- Calculate the height of the sidebar
--   local sidebar_width = vim.g.NERDTreeWidth or vim.o.sidebarwidth or 0
--   local sidebar_offset = 0
--   if vim.g.NERDTreeToggle or vim.g.nerdtree then
--     sidebar_offset = sidebar_width
--   end
-- 
--   -- Open the terminal in a new horizontal split window with fixed height in the current buffer's window
--   vim.cmd(string.format('botright %d split term://$SHELL', terminal_height))
--   vim.cmd('setlocal nonumber') -- Hide line numbers in terminal window
--   vim.cmd('startinsert') -- Automatically enter insert mode when opening the terminal window
--   vim.cmd(string.format('resize %d', terminal_height)) -- Set the height of the terminal split window
--   vim.cmd(string.format('wincmd H | wincmd %c | wincmd L', 124 + sidebar_offset)) -- Move the terminal window to the bottom of the current buffer's window
-- 
--   -- Restore the original window and buffer
--   vim.api.nvim_set_current_win(current_win)
--   vim.api.nvim_set_current_buf(current_buf)
-- end
-- 
-- return M

