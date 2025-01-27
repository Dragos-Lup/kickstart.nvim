function TransparentPencils()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

TransparentPencils()
return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "frappe",
                transparent_background = true,
                term_colors = true,
            })
            vim.cmd.colorscheme("catppuccin")

            vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#CD9EFC" })
            vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#BABBF6" })
            vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#BABBF6" })
        end,
    },
}
