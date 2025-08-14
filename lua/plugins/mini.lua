return {
    {
       "echasnovski/mini.nvim",
        config = function()
            -- AI
            -- require("mini.ai").setup({
            --    mappings = {
            --        around = "a",
            --        inside = "i",

            --        around_next = "an",
            --        inside_next = "in",
            --        around_last = "al",
            --        inside_last = "il",

            --        gotoleft = "g(",
            --        gotoright = "g)"
            --    },
            --    n_lines = 50,
            --    search_method = "cover_or_next",
            --    silent = false
            --    })

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

            -- Comment
            require("mini.comment").setup({
                options = {pad_comment_parts = true},
                mappings = {
                    comment = "ct",
                    comment_line = "cl",
                    comment_visual = "cvm",
                    textobject = "cto"
                }
            })
            -- Completion
            require("mini.completion").setup()
            require("mini.cursorword").setup({delay = 100})
            require("mini.diff").setup()
            require("mini.extra").setup()
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
            local gen_loader = require('mini.snippets').gen_loader
            require('mini.snippets').setup({snippets = {
                    gen_loader.from_file('~/.config/nvim/snippets/global.json'),
                    gen_loader.from_lang(),
                }})
            require("mini.splitjoin").setup()
            require("mini.starter").setup()
            require("mini.surround").setup()
            require("mini.tabline").setup()
            require("mini.test").setup()
            require("mini.trailspace").setup()
        end,
    }
}
