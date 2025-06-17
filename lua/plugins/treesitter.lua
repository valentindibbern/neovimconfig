return {
    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter.configs").setup({
                -- Following idk why, lua_ls screamed at me to do it
                modules = {},
                sync_install = true,
                ignore_install = {},

                -- From here on I understand
                ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "python"},
                auto_install = true,
                highlight = {enable = true},
                indent = {enable = true},

                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<leader>eis",
                        node_incremental = "<leader>iis",
                        scope_incremental = "<leader>sis",
                        node_decremental = "<leader>dis",
                    },
                },

                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = {  query = "@class.inner",
                                        desc = "Select inner part of a class region" },
                            ["as"] = {  query = "@local.scope",
                                        query_group = "locals",
                                        desc = "Select language scope" },
                        },
                        selection_modes = {
                            ['@parameter.outer'] = 'v', -- charwise
                            ['@function.outer'] = 'V', -- linewise
                            ['@class.outer'] = '<c-v>', -- blockwise
                        },
                        include_surrounding_whitespace = true,
                    },
                },
            })
        end,
    },

    -- Textobjects
    {
        "nvim-treesitter/nvim-treesitter-textobjects"
    }
}
