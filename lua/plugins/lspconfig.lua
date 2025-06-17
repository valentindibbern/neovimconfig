--[[
local lspconfig = require("lspconfig")
local typos_active = true

local function is_buffer_loaded(bufnr)
    return vim.api.nvim_buf_is_loaded(bufnr)
end

function ToggleTypos()
    local bufnr = vim.api.nvim_get_current_buf()

    if not is_buffer_loaded(bufnr) then
        print("Buffer is not loaded!")
        return
    end

    local client_id = vim.lsp.get_active_clients({name = "typos_lsp"})[1]

    if typos_active then
        -- Stop the LSP client
        if client_id then
            vim.lsp.buf_detach_client(bufnr, client_id.id)
            typos_active = false
            print("Typos disabled.")
        end
    else
        -- Start the LSP client
        lspconfig.typos_lsp.setup({})
        vim.lsp.buf_attach_client(bufnr, client_id.id)
        typos_active = true
        print("Typos enabled.")
    end
end
--]]
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
		    require("mason-lspconfig").setup({
                ensure_installed = {"lua_ls"},
                automatic_enable = true
            })
            vim.lsp.config("lua_ls", {settings = {Lua = {diagnostics = {globals = {"vim"}}}}})
            -- vim.keymap.set("n", "<leader>tsc", ToggleTypos, {noremap = true, silent = true, desc = "Toggle Spellchecking"})
        end,
    }
}
