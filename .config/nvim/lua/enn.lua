------------ Remap ----------------

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pf", function() FzfLua.files() end)
vim.keymap.set("n", "<leader>q", vim.cmd.wqa)
vim.keymap.set("n", "<leader>t", vim.cmd.term)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

------------ Set ---------------------

vim.opt.guicursor = ""
vim.opt.rnu = true
vim.opt.nu = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.backup = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 50
vim.opt.updatetime = 50
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

---------- Plugins -----------------

require("plugins")

require("fzf-lua").setup()
vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'markdown', 'lua', 'python', 'javascript', 'typescript', 'typescriptreact', 'rust', 'go', 'c', 'c++', 'c3' },
    callback = function()
        vim.treesitter.start()
    end,
})
require("mdkite").setup({
    -- all optional; sane defaults shown
    instance_mode = "takeover",  -- "takeover" (one tab) or "multi" (tab per instance)
    port = 0,                    -- 0 = auto (8421 for takeover, OS-assigned for multi)
    open_browser = true,
    default_theme = "dark",      -- "dark" or "light"; initial preview theme
    debounce_ms = 300,
})

require("visual-whitespace").setup()


vim.g.vimtex_view_method = "zathura"

---------- Colorscheme ------------

vim.cmd.colorscheme("melange")
