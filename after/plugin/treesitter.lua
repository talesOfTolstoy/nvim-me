require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

require'nvim-treesitter.configs'.setup {
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn", -- set to `false` to disable one of the mappings
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}

require'nvim-treesitter.configs'.setup {
  indent = {
    enable = true
  }
}

-- set foldmethod=expr
-- set foldexpr=nvim_treesitter#foldexpr()
-- set nofoldenable                     -- Disable folding at startup.


-- Last Change: 2022 Apr 16

if vim.g.loaded_nvim_treesitter then
  return
end
vim.g.loaded_nvim_treesitter = true

-- setup modules
require("nvim-treesitter").setup()

local api = vim.api

-- define autocommands
local augroup = api.nvim_create_augroup("NvimTreesitter", {})

api.nvim_create_autocmd("Filetype", {
  pattern = "query",
  group = augroup,
  callback = function()
    api.nvim_clear_autocmds {
      group = augroup,
      event = "BufWritePost",
    }
    api.nvim_create_autocmd("BufWritePost", {
      group = augroup,
      buffer = 0,
      callback = function(opts)
        require("nvim-treesitter.query").invalidate_query_file(opts.file)
      end,
      desc = "Invalidate query file",
    })
  end,
  desc = "Reload query",
})


local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.zimbu = {
  install_info = {
    url = "~/projects/tree-sitter-zimbu", -- local path or git repo
    files = {"src/parser.c"}, -- note that some parsers also require src/scanner.c or src/scanner.cc
    -- optional entries:
    branch = "main", -- default branch in case of git repo if different from master
    generate_requires_npm = false, -- if stand-alone parser without npm dependencies
    requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
  },
  filetype = "zu", -- if filetype does not match the parser name
}
