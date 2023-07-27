vim.g.tex_flavor='latex'
vim.g.vimtex_view_method = 'skim'
vim.g.vimtex_view_skim_sync = 1
vim.g.vimtex_view_skim_activate = 1
vim.g.vimtex_view_skim_reading_bar = 0


-- Below are grammar check setup things
vim.g.vimtex_grammar_vlty = {lt_command = 'languagetool'}
vim.cmd('set spelllang=en_gb')
vim.g.vimtex_grammar_vlty.show_suggestions = 1
vim.g.vimtex_grammar_vlty.server='my'
vim.g.vimtex_grammar_vlty.shell_options = {
    '-multi-language',
    '-packages"*"',
    '-define ~/vlty/defs.txt',
    '-replace ~/vlty/repls.txt',
    '-equation-punctuation display',
    '-single-letters "i.,A.|z.,B.||"',
    }



vim.g.vimtex_compiler_latexmk = {
  continuous = 0,
  out_dir = function()
    return vim.fn.expand("%:t:r")
  end
}

--/=======================================================


-- This is necessary for VimTeX to load properly. The "indent" is optional.

-- Note that most plugin managers will do this automatically.
----------vim.cmd('filetype plugin indent on')

-- This enables Vim's and neovim's syntax-related features. Without this, some
-- VimTeX features will not work (see ":help vimtex-requirements" for more
-- info).
----------vim.cmd('syntax enable')

-- Viewer options: One may configure the viewer either by specifying a built-in
-- viewer method:
----------vim.g.vimtex_view_method = 'skim'
--vim.g.vimtex_compiler_progname = 'nvr'
--vim.g.tex_flavor = 'latex'

-- Or with a generic interface:
----------vim.g.vimtex_view_general_viewer = 'skim'
----------vim.g.vimtex_view_general_options = '--unique file:@pdf\\#src:@line@tex'


--vim.g.vimtex_view_skim_reading_bar = 1
--

----------vim.g.vimtex_compiler_method = 'latexmk'
----------vim.g.vimtex_compiler_latexmk = {
----------  aux_dir = '',
----------  callback = 1,
----------  backend = '',
----------  continuous = 0,
----------  executable = 'latexmk',
----------  hooks = {},
----------  options = {
----------    '-file-line-error',
----------  --  '-bibtex-cond',
----------  --  '-c',
----------  --  '-pvc',
----------  --  '-shell-escape',
----------    '-verbose',
----------  --  '-dvi-',
----------  --  '-ps-',
----------  --  '-silent',
----------    '-synctex=1',
----------    '-interaction=nonstopmode',
----------  },
----------}

-- Redirect the out files to a newly created directory
-- vim.g.vimtex_compiler_latexmk = {'out_dir': {-> expand("%:t:r")}}
----------vim.g.vimtex_compiler_latexmk = {
----------  out_dir = function()
----------    return vim.fn.expand("%:t:r")
----------  end
----------}

-- Nice presets for using skim:
--vim.g.vimtex_view_skim_activate = 1
--vim.g.vimtex_view_skim_sync = 1





-- VimTeX uses latexmk as the default compiler backend. If you use it, which is
-- strongly recommended, you probably don't need to configure anything. If you
-- want another compiler backend, you can change it as follows. The list of
-- supported backends and further explanation is provided in the documentation,
-- see ":help vimtex-compiler".

-- Most VimTeX mappings rely on localleader and this can be changed with the
-- following line. The default is usually fine and is the symbol "\".
----------vim.g.maplocalleader = [["\"]]
-- vim.g.vimtex



