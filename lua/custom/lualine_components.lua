local X = {}

X.clock_pos = function()
    local time = os.date("%H:%M")
    local row, col = unpack(vim.api.nvim_win_get_cursor(0))
    return string.format("%s | %d:%d", time, row, col + 1)
end

return X
