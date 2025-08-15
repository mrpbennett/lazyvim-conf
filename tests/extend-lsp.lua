return {
  {
    "neovim/nvim-lspconfig",
    -- no custom config() needed — let LazyVim wire it up
    opts = function(_, opts)
      -- Keep all existing LazyVim defaults
      opts.servers = opts.servers or {}

      -- If you don't want pyright at all, disable it cleanly
      opts.servers.pyright = { enabled = false }

      -- pylsp: keep it slim (no formatters/linters you don't want)
      opts.servers.pylsp = vim.tbl_deep_extend("force", opts.servers.pylsp or {}, {
        settings = {
          pylsp = {
            plugins = {
              pyflakes    = { enabled = false },
              pycodestyle = { enabled = false },
              autopep8    = { enabled = false },
              yapf        = { enabled = false },
              mccabe      = { enabled = false },
              pylsp_mypy  = { enabled = false },
              pylsp_black = { enabled = false },
              pylsp_isort = { enabled = false },
            },
          },
        },
      })

      -- ruff LSP (pairs well with pylsp when formatters/linters are off)
      opts.servers.ruff = vim.tbl_deep_extend("force", opts.servers.ruff or {}, {
        init_options = { settings = { lineLength = 110 } },
      })

      -- Optional: small global tweaks without replacing the whole table
      opts.diagnostics = vim.tbl_deep_extend("force", opts.diagnostics or {}, {
        underline = true,
        severity_sort = true,
        update_in_insert = false,
        virtual_text = { spacing = 4, source = "if_many", prefix = "●" },
      })

      -- Optional: inlay hints — keep LazyVim’s behavior, only exclude what you need
      opts.inlay_hints = vim.tbl_deep_extend("force", opts.inlay_hints or {}, {
        enabled = true,
        exclude = opts.inlay_hints and opts.inlay_hints.exclude or { "vue" },
      })
    end,


  },
}
