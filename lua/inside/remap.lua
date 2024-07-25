vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pv", ":Ex<CR>")


vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>ref", ":edit<CR> <BAR> :$<CR>") --refresh a file (space + ref) and go to last line

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>");
vim.keymap.set("n", "<leader>fmk", "<cmd>CellularAutomaton game_of_life<CR>")

--open terminal:
--vim.keymap.set("n", "<leader>ot", "<cmd>terminal<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>dog", "<cmd>PetsNew dog<CR>")
vim.keymap.set("n", "<leader>kill", "<cmd>PetsKillAll<CR>")
vim.keymap.set("n", "<leader>slime", "<cmd>PetsNew slime<CR>")

vim.keymap.set("n", "<leader>rt", "<C-w>k <BAR> 15<C-w>+")


vim.keymap.set("n", "<leader>mw", ":WindowsMaximize<CR>")

vim.keymap.set("n", "<leader>com", ":VimtexCompile<CR>") -- starts vimtex compiler (set on background)

vim.keymap.set("n", "<leader>cg", ":w <BAR> compiler vlty <BAR> make <BAR> :cw <CR><ESC>") -- compiles grammar in vimtex

vim.keymap.set('t', '<C-w>k', "<C-\\><C-n><C-w>k",{silent = true})

vim.keymap.set('n', '<C-a><C-r>', ":ArenaToggle<CR>")

vim.keymap.set('n', '<leader>tt', ":tabnew<CR>")
vim.keymap.set('n', '<leader>tq', ":tabclose<CR>")

vim.keymap.set('n', '<leader>cm', "@g")

