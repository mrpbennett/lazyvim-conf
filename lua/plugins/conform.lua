return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" }, -- Use stylua for Lua formatting
      javascript = { "prettier" }, -- Use Prettier for JavaScript
      javascriptreact = { "prettier" }, -- Use Prettier for React JavaScript
      typescript = { "prettier" }, -- Use Prettier for TypeScript
      typescriptreact = { "prettier" }, -- Use Prettier for React
      json = { "prettier" }, -- Use Prettier for JSON
      html = { "prettier" }, -- Use Prettier for HTML
      css = { "prettier" }, -- Use Prettier for CSS
      markdown = { "prettier" }, -- Use Prettier for Markdown
      yaml = { "yamlfmt" }, -- Replace default with K8s-friendly formatter
      python = { "black", "isort" }, -- Use black and isort for Python
      sql = { "sqlfluff" },
    },
    formatters = {
      yamlfmt = {
        command = "yamlfmt",
        args = { "-formatter", "basic", "-indentless_arrays=true" },
      },
      prettier = {
        prepend_args = { "--single-quote", "--semi" },
      },
    },
  },
}
