-- load all plugins
require "pluginList"
require "options"
require "plugins.bufferline"

local g = vim.g

g.mapleader = " "
g.auto_save = true

-- colorscheme related stuff

g.nvchad_theme = "onedark"
local base16 = require "base16"
base16(base16.themes["onedark"], true)

vim.cmd[[colorscheme tokyonight]]

g.tokyonight_style = "night"
g.tokyonight_italic_functions = 1
g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
g.tokyo_italic_comments = 1
g.tokyonight_italic_variables = 1
g.tokyonight_italic_keywords = 1
g.tokyonight_terminal_colors = 0

require "highlights"
require "mappings"

require("utils").hideStuff()

g.vim_markdown_folding_disabled = 1
g.mkdp_auto_start = 1
g.mkdp_auto_close = 1
g.mkdp_refresh_slow = 1
g.mkdp_markdown_css = '~/github/githubmkd.css'
vim.api.nvim_exec([[
   au BufEnter term://* setlocal nonumber
]], false)

g.neoformat_try_pretier = 1
g.neoformat_basic_format_align = 1
g.neoformat_basic_format_retab = 1
g.neoformat_basic_format_trim = 1

vim.api.nvim_exec([[
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
]], false)
