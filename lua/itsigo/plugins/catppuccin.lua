return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 999,
    config = function()
        local cat = require("catppuccin")
        cat.setup({
            integrations = {
                harpoon = true,
                mason = true,
                cmp = true,
                telescope = { enabled = true },
            }
        })
        vim.cmd.colorscheme "catppuccin-macchiato"
    end,
}
