require("inside.remap")
require("inside.set")
print("Hello from the inside")

--vim.api.nvim_command('autocmd VimEnter * <command name>')

--vim.api.nvim_command([[autocmd VimEnter * :rightb split term://$SHELL | 15wincmd - | set nonumber]])


vim.api.nvim_command([[autocmd VimEnter * ++nested :rightb split term://$SHELL |  set nonumber | wincmd k | wincmd 15+]])

--vim.api.nvim_command('autocmd VimEnter * wincmd k ')
-- vim.api.nvim_command('autocmd VimEnter * wincmd 15+')

--vim.api.nvim_command('autocmd VimEnter * wincmd k | Startup display')

-- vim.api.nvim_command([[autocmd VimEnter * wincmd k | resize +15]])


-- term://$SHELL |  set nonumber | resize +15 | wincmd k 

--vim.api.nvim_create_autocmd("noNumb", {event = "VimEnter", pattern = "*", command = ":set nonumber"})

-----vim.api.nvim_command([[autocmd VimEnter * :lua vim.api.nvim_command('rightb split term://$SHELL<CR> | 15<C-w>- | set nonumber<CR>')]])

--local api = vim.api

-- Highlight on yank
--local OTGroup = vim.api.nvim_create_augroup("openTerminalAuGroup", { clear = true })
--vim.api.nvim_create_autocmd("openTerminal", {
--    command = "set nonumber",
--    group = openTerminalGroup,
--})


--vim.cmd([[
--  augroup TerminalSetup
--    autocmd!
--    autocmd VimEnter * rightb split term://$SHELL | 15wincmd - | set nonumber
--  augroup END
--]])


--function openTerminal()
--    vim.cmd(":rightb split term://$SHELL<CR> <BAR> 15<C-w>- <BAR> :set nonumber<CR>")
--    vim.cmd("15<C-w>-")
--end
--
--vim.api.nvim_command('autocmd VimEnter * openTerminal()')


--:rightb split term://$SHELL<CR> <BAR> 15<C-w>- <BAR> :set nonumber<CR>
--require("<leadr>ot")
--vim.api.nvim_command('autocmd VimEnter <leader>ot')
--vim.env.PYTHONPATH = '/path/to/matlab/extern/engines/python'

-- vim.cmd('UndotreeToggle')
-- vim.cmd('wincmd R')

-- function open_undotree()
--   vim.cmd('UndotreeToggle')
--   vim.cmd('vert botright split')
--   vim.g.undotree_WindowLayout =  { { relative = 'win', width = 30, height = 15, row = 1, col = 1 } }
-- end

--gives branch name in status line. Command from fugitive.
-- vim.cmd('set statusline=%<%f\\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\\ %P')
-- 
-- Open slim UndotreeToggle window on the right of the screen upon start
-- vim.api.nvim_command('autocmd VimEnter * UndotreeToggle')
-- vim.api.nvim_command('autocmd VimEnter * wincmd l')
-- vim.api.nvim_command('autocmd VimEnter * wincmd p')
-- vim.api.nvim_command('autocmd VimEnter * wincmd l')
-- vim.api.nvim_command('autocmd VimEnter * wincmd p')
-- vim.cmd('q')


-- vim.api.nvim_command('autocmd VimEnter * wincmd J')
-- vim.api.nvim_command('autocmd VimEnter * wincmd H')
-- vim.api.nvim_command('autocmd VimEnter * wincmd K')
-- vim.api.nvim_command('autocmd VimEnter * wincmd L')
-- vim.api.nvim_command('autocmd VimEnter * wincmd p')
-- 
-- Open slim UndotreeToggle window on the top-right of the screen upon start
-- vim.api.nvim_command('autocmd VimEnter * UndotreeToggle')
-- vim.api.nvim_command('autocmd VimEnter * wincmd L')
-- vim.api.nvim_command('autocmd VimEnter * wincmd p')
-- vim.api.nvim_command('autocmd VimEnter * wincmd J')
-- vim.api.nvim_command('autocmd VimEnter * wincmd H')
-- vim.api.nvim_command('autocmd VimEnter * wincmd K')
-- vim.api.nvim_command('autocmd VimEnter * wincmd L')
-- vim.api.nvim_command('autocmd VimEnter * wincmd p')

-- Open a new vertical split window with the terminal and set it as the main window
--vim.api.nvim_command('autocmd VimEnter * hsplit term://$SHELL')
-- vim.api.nvim_command('autocmd VimEnter * wincmd H')
-- vim.api.nvim_command('autocmd VimEnter * wincmd p')
--
--
--  nvdash = {
--    load_on_startup = false,
--
--    header = {
--"      ___           ___           ___            ___         ___     ",
--"     /\  \         /\  \         /\  \          /\  \       /\  \    ",
--"    /::\  \       /::\  \       /::\  \         \:\  \     /::\  \   ",
--"   /:/\:\  \     /:/\:\  \     /:/\:\  \    ___ /::\__\   /:/\:\  \  ",
--"  /::\~\:\__\   /:/  \:\  \   /::\~\:\  \  /\  /:/\/__/  /::\~\:\  \ ",
--" /:/\:\ \:|__| /:/__/ \:\__\ /:/\:\ \:\__\ \:\/:/  /    /:/\:\ \:\__\",
--" \:\~\:\/:/  / \:\  \ /:/  / \/_|::\/:/  /  \::/  /     \/__\:\/:/  /",
--"  \:\ \::/  /   \:\  /:/  /     |:|::/  /    \/__/           \::/  / ",
--"   \:\/:/  /     \:\/:/  /      |:|\/__/                     /:/  /  ",
--"    \::/__/       \::/  /       |:|  |                      /:/  /   ",
--"     ~~            \/__/         \|__|                      \/__/    ",
--    }
--}

