vim.g.tex_flavor='latex'
vim.g.vimtex_view_method = 'skim'
vim.g.vimtex_view_skim_sync = 1
vim.g.vimtex_view_skim_activate = 1
vim.g.vimtex_view_skim_reading_bar = 0

vim.g.vimtex_compiler_latexmk = {
  continuous = 0,
  out_dir = function()
    return vim.fn.expand("%:t:r")
  end
}
