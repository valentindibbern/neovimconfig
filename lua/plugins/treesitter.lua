return {
    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
            "nvim-treesitter/nvim-treesitter-refactor",
            "nvim-treesitter/nvim-treesitter-context",
            "HiPhish/rainbow-delimiters.nvim",
        },
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
                        init_selection = "<leader>iis",
                        node_incremental = "<leader>inis",
                        scope_incremental = "<leader>isis",
                        node_decremental = "<leader>dnis",
                    },
                },

                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ["af"] = {query = "@function.outer",
                                      desc = "Select around function"},
                            ["if"] = {query = "@function.inner",
                                      desc = "Select inner function"},
                            ["ac"] = {query = "@class.outer",
                                      desc = "Select around class"},
                            ["ic"] = {query = "@class.inner",
                                      desc = "Select inner class"},
                            ["as"] = {query = "@local.scope",
                                      query_group = "locals",
                                      desc = "Select language scope"},
                        },
                        selection_modes = {
                            ['@parameter.outer'] = 'v',
                            ['@function.outer'] = 'V',
                            ['@class.outer'] = '<c-v>',
                        },
                        include_surrounding_whitespace = true,
                    },
                },
            })
        end,
    },
}
