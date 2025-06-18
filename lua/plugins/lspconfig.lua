
return {
	-- Mason
    {
        "mason-org/mason.nvim",
        config = true
    },

    -- Mason LSP config
    {
        "mason-org/mason-lspconfig.nvim",
	    dependencies = {"neovim/nvim-lspconfig"},
        config = function()
            local lspconfig = require("lspconfig")
		    require("mason-lspconfig").setup({
                ensure_installed = {"lua_ls", "typos_lsp"},
                automatic_enable = true
            })

            -- lua_ls setup
            vim.lsp.config("lua_ls", {settings = {Lua = {diagnostics = {globals = {"vim"}}}}})


            -- typos_ls setup
            lspconfig.typos_lsp.setup({})
            local typos_active = true

            function ToggleTypos()
                local bufnr = vim.api.nvim_get_current_buf()

                if not vim.api.nvim_buf_is_loaded(bufnr) then
                    print("Buffer is not loaded!")
                    return
                end

                local client = vim.lsp.get_active_clients({name = "typos_lsp"})[1]

                if typos_active then
                    -- Stop the LSP client
                    if client then
                        vim.lsp.buf_detach_client(bufnr, client.id)
                        typos_active = false
                        print("Typos disabled.")
                    end
                else
                    -- Start the LSP client
                    if client then
                        vim.lsp.buf_attach_client(bufnr, client.id)
                        typos_active = true
                        print("Typos enabled.")
                    else
                        lspconfig.typos_lsp.setup({})
                        typos_active = true
                        print("Typos configured & enabled.")
                    end
                end
            end

            vim.keymap.set("n", "<leader>tsc", ToggleTypos, {noremap = true, silent = true, desc = "Toggle Spellchecking"})
        end,
    }
}
