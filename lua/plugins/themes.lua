return {
    -- Colorscheme
    {
        "navarasu/onedark.nvim",
        priority = 1000,
        config = function()
            require('onedark').setup({style = "darker"})
            require('onedark').load()
        end
    },

    -- Webdevicons
    {
        "nvim-tree/nvim-web-devicons",
    }
}
