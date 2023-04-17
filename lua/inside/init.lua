require("inside.remap")
require("inside.set")
print("Hello from the inside")

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
-- -- Open slim UndotreeToggle window on the right of the screen upon start
-- vim.api.nvim_command('autocmd VimEnter * UndotreeToggle')
-- vim.api.nvim_command('autocmd VimEnter * wincmd L')
-- vim.api.nvim_command('autocmd VimEnter * wincmd p')
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
  nvdash = {
    load_on_startup = false,

    header = {
"      ___           ___           ___            ___         ___     ",
"     /\  \         /\  \         /\  \          /\  \       /\  \    ",
"    /::\  \       /::\  \       /::\  \         \:\  \     /::\  \   ",
"   /:/\:\  \     /:/\:\  \     /:/\:\  \    ___ /::\__\   /:/\:\  \  ",
"  /::\~\:\__\   /:/  \:\  \   /::\~\:\  \  /\  /:/\/__/  /::\~\:\  \ ",
" /:/\:\ \:|__| /:/__/ \:\__\ /:/\:\ \:\__\ \:\/:/  /    /:/\:\ \:\__\",
" \:\~\:\/:/  / \:\  \ /:/  / \/_|::\/:/  /  \::/  /     \/__\:\/:/  /",
"  \:\ \::/  /   \:\  /:/  /     |:|::/  /    \/__/           \::/  / ",
"   \:\/:/  /     \:\/:/  /      |:|\/__/                     /:/  /  ",
"    \::/__/       \::/  /       |:|  |                      /:/  /   ",
"     ~~            \/__/         \|__|                      \/__/    ",
    }
}
