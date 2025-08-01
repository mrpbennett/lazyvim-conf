return {
    {
        "miversen33/sunglasses.nvim",
        opts = {

            filter_percent = 0.25,
            filter_type = "SHADE",
            log_level = "ERROR",
            refresh_timer = 5,
            excluded_filetypes = {
                "dashboard",
                "lspsagafinder",
                "packer",
                "checkhealth",
                "mason",
                "NvimTree",
                "neo-tree",
                "plugin",
                "lazy",
                "TelescopePrompt",
                "alpha",
                "toggleterm",
                "sagafinder",
                "better_term",
                "fugitiveblame",
                "starter",
                "NeogitPopup",
                "NeogitStatus",
                "DiffviewFiles",
                "DiffviewFileHistory",
                "DressingInput",
                "spectre_panel",
                "zsh",
                "registers",
                "startuptime",
                "OverseerList",
                "Outline",
                "Navbuddy",
                "noice",
                "notify",
                "saga_codeaction",
                "sagarename"
            },
            excluded_highlights = {
                "WinSeparator",
                { "lualine_.*", glob = true },
            },
            can_shade_callback = function(opts)
                local conditions = {
                    function()
                        return vim.api.nvim_get_option_value("diff", { win = opts.window })
                    end,
                }

                for _, condition in ipairs(conditions) do
                    if condition() then
                        return false
                    end
                end

                return true
            end,
        }
    }

}
