-- Detect system appearance (macOS only)
local handle = io.popen("defaults read -g AppleInterfaceStyle 2>/dev/null")
local result = handle:read("*a")
handle:close()

local is_dark = result:match("Dark") ~= nil

-- Decide flavour and background based on appearance
local flavour = is_dark and "mocha" or "latte"
local background = {
    light = "latte",
    dark = "mocha",
}

return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,

        opts = {
            flavour = flavour, -- use detected flavour
            background = background,
            transparent_background = false,
            no_italic = true,
            no_bold = true,
            no_underline = true,
            term_colors = true,

            integrations = {
                cmp = true,
                gitsigns = true,
                neotree = true,
                treesitter = true,
                notify = false,
                mini = {
                    enabled = true,
                    indentscope_color = "",
                },
            },
        },
    },

    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin",
        },
    },
}
