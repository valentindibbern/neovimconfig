return {
    {
       "echasnovski/mini.nvim",
        config = function()
            -- AI
            require("mini.ai").setup({
                mappings = {
                    around = "a",
                    inside = "i",

                    around_next = "an",
                    inside_next = "in",
                    around_last = "al",
                    inside_last = "il",

                    gotoleft = "g(",
                    gotoright = "g)"
                },
                n_lines = 50,
                search_method = "cover_or_next",
                silent = false
            })
            -- Align
            -- require("mini.align").setup({
            --    patterns = {
            --        "=", ":", ","
            --    },
            --    default_alignment = "left",
            --    max_pattern_length = 3,
            --    align_on = "=",
            --    padding = 1,
            --    smart_align = true,
            -- })
            -- Animate
            require("mini.animate").setup({
                animations = {
                    "fade",
                    "zoom",
                    "slide_left",
                    "slide_right"
                },
                duration = 500,
                exclude = {"cursor"}
            })
            -- Basics
            require("mini.basics").setup({
                auto_save = true,
                trim_trailing_whitespace = true,
                smart_indent = true,
                auto_indent = true
            })
            -- Bracketed
            require("mini.bracketed").setup({
                highlight = true,
                pairs = { "()", "{}", "[]", "<>" },
                auto_close = true,
                move_cursor = true,
                balance = true,
                smart_indent = true
            })
            -- Bufremove
            -- require("mini.bufremove").setup({})
            -- Clue
            require("mini.clue").setup({
                show_cmd = true,
                show_keymaps = true,
                show_pointers = true,
                display = "floating",
                duration = 3000,
            })
            -- Comment
            require("mini.comment").setup({
                mappings = {
                    toggle = "<leader>tcm",
                    uncomment = "§"
                },
                commentstring = {
                    lua = "-- %s",
                    python = "# %s",
                    html = "<!-- %s -->",
                    php = "// %s",
                    javascript = "// %s"
                },
                ignore = {"^%s*$"},
                create_mappings = true,
            })
            -- Completion
            require("mini.completion").setup({
                delay = {completion = 100, info = 100, signature = 50},
                window = {
                    info = {height = 25, width = 80, border = 'none'},
                    signature = {height = 25, width = 80, border = 'none'},
                },
                lsp_completion = {
                    source_func = 'completefunc',
                    auto_setup = true,
                },
                mappings = {
                    force_twostep = '<C-Space>',
                    force_fallback = '<A-Space>',
                },
                set_vim_settings = true
            })
            require("mini.cursorword").setup({delay = 100})
            require("mini.diff").setup({})
            require("mini.extra").setup({})
            require("mini.files").setup()
            require("mini.fuzzy").setup()
            require("mini.hipatterns").setup()
            require("mini.jump").setup()
            require("mini.jump2d").setup()
            require("mini.map").setup()
            require("mini.move").setup()
            -- require("mini.notify").setup()
            require("mini.operators").setup()
            -- require("mini.pair").setup()
            -- require("mini.picks").setup()
            require("mini.sessions").setup()
            require("mini.splitjoin").setup()
            require("mini.starter").setup()
            require("mini.surround").setup()
            require("mini.tabline").setup()
            require("mini.test").setup()
            require("mini.trailspace").setup()
        end, 
    }
}
