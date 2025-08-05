-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.wrap = true
vim.g.codeium_os = "Darwin"
vim.g.codeium_arch = "arm64"

-- 🔧 Global indentation settings (4 spaces)
vim.opt.tabstop = 4      -- Number of spaces that a <Tab> counts for
vim.opt.softtabstop = 4  -- Number of spaces inserted/deleted with <Tab>/<BS>
vim.opt.shiftwidth = 4   -- Number of spaces for autoindent
vim.opt.expandtab = true -- Use spaces instead of tabs

-- no comments on new lines
vim.opt.formatoptions:remove("c") -- Don't auto-comment new lines

-- JavaScript/TypeScript formatting
vim.g.lazyvim_eslint_auto_format = true
vim.g.lazyvim_prettier_needs_config = false

-- 🐍 PYTHON
vim.g.lazyvim_python_lsp = "pylsp"
vim.g.lazyvim_python_ruff = "ruff"

-- Invert the cursor
vim.opt.guicursor = {
  "n-v-c:block-Cursor",
  "i-ci-ve:ver25-Cursor",
  "r-cr:hor20-Cursor",
  "o:hor50-Cursor",
  "a:blinkon0",
}

vim.api.nvim_set_hl(0, "Cursor", { reverse = true })

-- 📈 SQL
vim.g.dbs = {
  {
    name = "local",
    url = "postgresql://postgres:password@localhost:5432/postgres",
  },
}
