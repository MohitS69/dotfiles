return {
    "numToStr/Comment.nvim",
    event = {"BufReadPre", "BufNewFile"},
    dependencies = {"JoosepAlviste/nvim-ts-context-commentstring"},
    config = function()
        -- import comment plugin safely
        local comment = require("Comment")

        local ts_context_commentstring = require(
                                             "ts_context_commentstring.integrations.comment_nvim")

        -- enable comment
        comment.setup({
            toggler = {
                ---Line-comment toggle keymap
                line = "<leader>/",
                ---Block-comment toggle keymap
                block = "gbc"
            },
            ---LHS of operator-pending mappings in NORMAL and VISUAL mode
            opleader = {
                ---Line-comment keymap
                line = "<leader>/",
                ---Block-comment keymap
                block = "gb"
            },
            -- for commenting tsx and jsx files
            pre_hook = ts_context_commentstring.create_pre_hook()
        })
    end
}
