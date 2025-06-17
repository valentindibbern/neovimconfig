require("config.lazy")

-- Options
vim.opt.number = true															-- Absolute Zeilennummern
vim.opt.relativenumber = true													-- Relative Zeilennummern
vim.opt.scrolloff = 999                                                         -- Cursor bleibt inder mitte
vim.opt.showmatch = true														-- Hervorheben von passende Klammern
vim.opt.cursorline = true														-- Hervorhebung der aktuellen Zeile
vim.opt.virtualedit = "block"                                                   -- Enables VE in VB-Mode
vim.opt.splitbelow = true														-- Neues Fenster Unten
vim.opt.splitright = true														-- Neues Fenster Rechts
vim.opt.inccommand = "split"                                                    -- Shows :%s/ result in splitwindow
vim.opt.wrap = false															-- Überfluss der Zeile auf nächster Zeile
vim.opt.colorcolumn = "81"														-- Markierung der 81. Spalte
vim.opt.signcolumn = "yes"														-- Force extra Spalte links
vim.opt.expandtab = true														-- Ersetzt \t durch Leerzeichen
vim.opt.tabstop = 4																-- Tabulatorgrösse für laden uns speichern
vim.opt.shiftwidth = 4                                                          -- Tabulatorgrösse für aktionen
vim.opt.termguicolors = true                                                    -- Verändert redndering
vim.opt.clipboard = "unnamedplus"

-- Keymaps

-- Modes
vim.keymap.set("n", "<A-v>", "<C-v>",
    {noremap = true, silent = true, desc = "Visual Block Mode"})

-- Basic Movement
vim.keymap.set("n", "l", "h",
    {noremap = true, silent = true, desc = "Move left normalmode"})
vim.keymap.set("v", "l", "h",
    {noremap = true, silent = true, desc = "Move left visualmode"})
vim.keymap.set("n", "ö", "l",
    {noremap = true, silent = true, desc = "Move right normahmode"})
vim.keymap.set("v", "ö", "l",
    {noremap = true, silent = true, desc = "Move right visualmode"})

-- Advanced Movement
vim.keymap.set("n", "S", "gg",
    {noremap = true, silent = true, desc = "Move start normalmode"})
vim.keymap.set("v", "S", "gg",
    {noremap = true, silent = true, desc = "Move start visualmode"})
vim.keymap.set("n", "E", "G",
    {noremap = true, silent = true, desc = "Move end normalmode"})
vim.keymap.set("v", "E", "G",
    {noremap = true, silent = true, desc = "Move end visualmode"})
vim.keymap.set("n", "b", "}",
    {noremap = true, silent = true, desc = "Move forward paragraph normalmode"})
vim.keymap.set("v", "b", "}",
    {noremap = true, silent = true, desc = "Move forward paragraph visualmode"})
vim.keymap.set("n", "B", "{",
    {noremap = true, silent = true, desc = "Move backward paragraph normalmode"})
vim.keymap.set("v", "B", "{",
    {noremap = true, silent = true, desc = "Move backward paragraph visualmode"})


-- Undo/Redo stack
vim.keymap.set("n", "<C-z>", "u",
    {noremap = true, silent = true, desc = "Back normalmode"})
vim.keymap.set("i", "<C-z>", "u",
    {noremap = true, silent = true, desc = "Back inputmode"})
vim.keymap.set("v", "<C-z>", "u",
    {noremap = true, silent = true, desc = "Back visualmode"})

vim.keymap.set("n", "<C-y>", "<C-r>",
    {noremap = true, silent = true, desc = "Forward normalmode"})
vim.keymap.set("i", "<C-y>", "<C-r>",
    {noremap = true, silent = true, desc = "Forward inputmode"})
vim.keymap.set("v", "<C-y>", "<C-r>",
    {noremap = true, silent = true, desc = "Forward visualmode"})

vim.keymap.set("n", "<C-a>", "ggVG",
    {noremap = true, silent = true, desc = "Select all"})


-- Special Functions
vim.keymap.set("n", "<leader>sh", ":split<CR>",
    {noremap = true, silent = true, desc = "Horizontal split"})
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>",
    {noremap = true, silent = true, desc = "Vertical split"})

vim.keymap.set("n", "<leader>1l", "gg",
    {noremap = true, silent = true, desc = "First Line normalmode"})
vim.keymap.set("v", "<leader>1l", "gg",
    {noremap = true, silent = true, desc = "First Line visualmode"})

vim.keymap.set("n", "<leader>1c", "ggg0",
    {noremap = true, silent = true, desc = "First Line First Char normalmode"})
vim.keymap.set("v", "<leader>1c", "ggg0",
    {noremap = true, silent = true, desc = "First Line First Char visualmode"})

vim.keymap.set("n", "<leader>ll", "G",
    {noremap = true, silent = true, desc = "Last Line normalmode"})
vim.keymap.set("v", "<leader>ll", "G",
    {noremap = true, silent = true, desc = "Last Line visualmode"})

vim.keymap.set("n", "<leader>lc", "Gg$",
    {noremap = true, silent = true, desc = "Last Line Last Char normalmode"})
vim.keymap.set("v", "<leader>lc", "Gg$",
    {noremap = true, silent = true, desc = "Last Line Last Char visualmode"})

-- Folding
vim.keymap.set("n", "<leader>uaf", "zR",
    {noremap = true, silent = true, desc = "Unfold all Folds"})
vim.keymap.set("n", "<leader>faf", "zM",
    {noremap = true, silent = true, desc = "Fold all Folds"})
vim.keymap.set("n", "<leader>fcf", "zc",
    {noremap = true, silent = true, desc = "Fold current Fold"})
vim.keymap.set("n", "<leader>ucf", "zo",
    {noremap = true, silent = true, desc = "Unfold current Fold"})
vim.keymap.set("n", "<leader>tcf", "za",
    {noremap = true, silent = true, desc = "Toggle current Fold"})
