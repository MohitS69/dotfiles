return {
    "nvim-lua/plenary.nvim", -- lua functions that many plugins use
    {"christoomey/vim-tmux-navigator", lazy = false},
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        enabled = true,
        opts = {scope = {enabled = false}, indent = {char = '▏'}}
    },
    'famiu/bufdelete.nvim'
}
