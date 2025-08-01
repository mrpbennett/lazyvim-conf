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

-- JavaScript/TypeScript formatting
vim.g.lazyvim_eslint_auto_format = true
vim.g.lazyvim_prettier_needs_config = false
