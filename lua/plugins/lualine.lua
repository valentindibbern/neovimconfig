-- local clockrow_component = require("custom.lualine_components")
local function clockpos()
    local time = os.date("%H:%M")
    local pos = vim.api.nvim_win_get_cursor(0)
    local row, col = pos[1], pos[2]
    return string.format("%s | %d:%d", time, row, col + 1)
end

return {
    {
        "nvim-lualine/lualine.nvim",
		requires = {"nvim-lualine/nvim-web-devicons"},
        options = {
			icons_enabled = true,
            theme = "onedark",
        },
		sections = {
			lualine_a = {"mode"},
			lualine_b = {"branch", "diff"},
            lualine_c = {"filename", "filesize", "diagnostics"},
			lualine_x = {"searchcount", "selectioncount"},
            lualine_y = {"buffers", "tabs", "windows"},
            lualine_z = {clockpos}
		}
    }
}
