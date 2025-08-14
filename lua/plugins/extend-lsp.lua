return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.server.ruff = {
        init_options = {
          settings = {
            lineLength = 110,
          },
        },
      }

    opts.servers.pyright = {mason = false}

      opts.servers.pyslp = {
        settings = {
                    pyslp = {
                        plugins = {
                            pyflakes = {enabled = false}
                            pycodestyle = {enabled = false}
                            autopep8 = {enabled = false}
                            yapf = {enabled = false}
                            mccabe = {enabled = false}
                            pyslp_mpyp = {enabled =false }
                            pylsp_black = {enabled = false}
                            pylsp_isort = {enabled =false}
                        }
                    }
        },

      }
    end,
  },
}
