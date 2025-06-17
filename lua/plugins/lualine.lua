return {
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
		requires = {"nvim-tree/nvim-web-devicons"},
        config = function ()
            local function clockpos()
                local time = os.date("%H:%M")
                local pos = vim.api.nvim_win_get_cursor(0)
                local row, col = pos[1], pos[2]
                return string.format("%s | %d:%d", time, row, col + 1)
            end

            require("lualine").setup({
                options = {
                    theme = "onedark",
                    globalstatus = true
                },
		        sections = {
		            lualine_a = {"mode"},
			        lualine_b = {"branch", "diff"},
                    lualine_c = {"selectioncount"},
			        lualine_x = {"diagnostics"},
                    lualine_y = {"filename"},
                    lualine_z = {clockpos}
		        }
            })
        end
    }
}
