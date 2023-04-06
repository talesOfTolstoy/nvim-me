require("sidebar-nvim").setup({
    disable_default_keybindings = 0,
    bindings = nil,
    open = true,
    side = "left",
    initial_width = 35,
    hide_statusline = false,
    update_interval = 1000,
    sections = { "datetime", "git", "diagnostics" },
    section_separator = {"", "-----", ""},
    section_title_separator = {""},
    containers = {
        attach_shell = "/bin/sh", show_all = true, interval = 5000,
    },
    datetime = { format = "%a %b %d, %H:%M", clocks = { { name = "local" } } },
    todos = { ignored_paths = { "~" } },
})

-- Hide status line in the sidebar window
vim.api.nvim_command('autocmd FileType sidebar setlocal statusline=%!v:lua.StatusLine()')

function StatusLine()
  if vim.fn.win_gettype() == 'sidebar' then
    return ''
  else
    -- Set your desired status line format for non-sidebar windows here
    return '%<%f %h%m%r%=%-14.(%l,%c%V%) %P%=%X'
  end
end

