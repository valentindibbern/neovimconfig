local builtin = require('telescope.builtin')
return {
    {
        "nvim-telescope/telescope.nvim",
		config = function()
			require("telescope").setup({
                vim.keymap.set("n", "<leader>ff", builtin.find_files,
                               {noremap = true, silent = true, desc = "Telescope find_file"}),
                vim.keymap.set("n", "<leader>fb", builtin.buffers,
                               {noremap = true, silent = true, desc = "Telescope buffers"}),
                vim.keymap.set("n", "<leader>sd", "<cmd>Telescope lsp_definitions<cr>",
                               {noremap = true, silent = true, desc = "Show definitions"}),
                vim.keymap.set("n", "<leader>sr", "<cmd>Telescope lsp_references<cr>",
                               {noremap = true, silent = true, desc = "Show references"}),
                vim.keymap.set("n", "<leader>si", "<cmd>Telescope lsp_implementations<cr>",
                               {noremap = true, silent = true, desc = "Show implementations"}),
                vim.keymap.set("n", "<leader>sd", "<cmd>Telescope diagnostics<cr>",
                               {noremap = true, silent = true, desc = "Show diagnostics"}),
            })
		end,
    }
}
