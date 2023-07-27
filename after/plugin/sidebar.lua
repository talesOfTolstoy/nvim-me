require("sidebar-nvim").setup({
    disable_default_keybindings = 0,
    bindings = nil,
    open = true,
    side = "left",
    initial_width = 35,
    hide_statusline = false,
    update_interval = 1000,
    sections = { "datetime", "git", "files", "containers", "symbols", "buffers" },
    section_separator = {"", "-----------------", ""},
    section_title_separator = {""},
    containers = {
        attach_shell = "/bin/sh", show_all = true, interval = 5000,
    },
    datetime = { format = "%a %d %b, %H:%M", clocks = { { name = "local" } } },
    todos = { ignored_paths = { "~" } },
    files = {
        icon = "",
        show_hidden = true,
        ignored_paths = {"%.git$"}
    },

    buffers = {
        icon = "",
        ignored_buffers = {}, -- ignore buffers by regex
        sorting = "id", -- alternatively set it to "name" to sort by buffer name instead of buf id
        show_numbers = true, -- whether to also show the buffer numbers
        ignore_not_loaded = false, -- whether to ignore not loaded buffers
        ignore_terminal = true, -- whether to show terminal buffers in the list
    },

    containers = {
        icon = "",
        use_podman = false,
        attach_shell = "/bin/sh",
        show_all = true, -- whether to run `docker ps` or `docker ps -a`
        interval = 5000, -- the debouncer time frame to limit requests to the docker daemon
    }

})


---- Hide status line in the sidebar window
--vim.api.nvim_command('autocmd FileType sidebar setlocal statusline=%!v:lua.StatusLine()')
--
--function StatusLine()
--  if vim.fn.win_gettype() == 'sidebar' then
--    return ''
--  else
--    -- Set your desired status line format for non-sidebar windows here
--    return '%<%f %h%m%r%=%-14.(%l,%c%V%) %P%=%X'
--  end
--end

