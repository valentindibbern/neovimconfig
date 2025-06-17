return {
    -- Noice
    {
        "folke/noice.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
            "muniftanjim/nui.nvim",
        },
        config = function()
            require("noice").setup({
                lsp = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    ["vim.lsp.util.stylize_markdown"] = true,
                    ["cmp.entry.get_documentation"] = true,
                },
                messages = {
                    enabled = true,
                    view = "mini",
                },
                presets = {
                    bottom_search = true,
                    command_palette = true,
                    long_message_to_split = true,
                    inc_rename = false,
                    lsp_doc_border = false,
                },
            })
        end,
    },

    -- Notify
    {
        "rcarriga/nvim-notify",
        config = function()
            require("notify").setup({
                stages = "fade_in_slide_out",
                timeout = 2000,
                max_height = 5,
            })
        end,
    }
}
