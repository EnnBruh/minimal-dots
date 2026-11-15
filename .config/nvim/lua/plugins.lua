vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim" -- Package Manager

    -- File Fuzzy Finder
    use {
        "ibhagwan/fzf-lua",
        requires = { "nvim-tree/nvim-web-devicons" }
    }

    -- Themes
    use "xero/miasma.nvim"
    use "rose-pine/neovim"
    use "morhetz/gruvbox"
    use "sainnhe/gruvbox-material"
    use "sainnhe/everforest"
    use "savq/melange-nvim"
    use {
        "2nthony/vitesse.nvim",
        requires = {
            "tjdevries/colorbuddy.nvim"
        }
    }

    -- Transparent Background
    use "xiyaowong/transparent.nvim"

    -- Treesitter/Syntax Highlighting
    use "nvim-treesitter/nvim-treesitter"

    -- Markdown Preview
    use {
        "selimacerbas/markdown-preview.nvim",
        requires = { "selimacerbas/live-server.nvim" },
    }

    -- Whitespace Visualizer
    use "mcauley-penney/visual-whitespace.nvim"

    use "lervag/vimtex"
end)
