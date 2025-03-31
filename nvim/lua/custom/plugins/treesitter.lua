return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({ 
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      ensure_installed = {
        "json",
        "javascript",
        "yaml",
        "html",
        "css",
        "markdown",
        "markdown_inline",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
        "vimdoc",
        "c",
        "python",
      },
    })
  end,
}
