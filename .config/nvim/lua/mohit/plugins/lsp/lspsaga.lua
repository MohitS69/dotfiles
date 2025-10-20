return {
    "nvimdev/lspsaga.nvim",
    config = function()
        require("lspsaga").setup({
            symbol_in_winbar = {enable = false},
            scroll_preview = {scroll_down = "<C-f>", scroll_up = "<C-b>"},
            -- use enter to open file with definition preview
            definition = {edit = "<CR>"},
            ui = {
                colors = {normal_bg = "#022746"},
                title = false,
                -- Border type can be single, double, rounded, solid, shadow.
                border = "rounded",
                winblend = 0,
                expand = "",
                collapse = "",
                code_action = "", -- code action 
                incoming = "",
                outgoing = " ",
                hover = ""
            }
        })
    end,
    dependencies = {
        "nvim-treesitter/nvim-treesitter", -- optional
        "nvim-tree/nvim-web-devicons" -- optional
    }
}
