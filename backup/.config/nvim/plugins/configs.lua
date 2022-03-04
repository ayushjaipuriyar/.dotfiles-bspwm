local M = {}

-- overriding default plugin configs!
M.treesitter = {
   ensure_installed = {
      "lua",
      "vim",
      "html",
      "css",
      "javascript",
      "json",
      "markdown",
      "cpp",
      "python"
   },
}

M.nvimtree = {
   git = {
      enable = true,
   },
}

return M
