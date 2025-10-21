return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")

        harpoon:setup()

        vim.keymap.set("n", "<leader>a", function()
            harpoon:list():add()
        end)
        vim.keymap.set("n", "<leader>h", function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end)

        -- Switch to harpooned file 1-4
        vim.keymap.set("n", "<leader>1", function()
            harpoon:list():select(1)
        end)
        vim.keymap.set("n", "<leader>2", function()
            harpoon:list():select(2)
        end)
        vim.keymap.set("n", "<leader>3", function()
            harpoon:list():select(3)
        end)
        vim.keymap.set("n", "<leader>4", function()
            harpoon:list():select(4)
        end)

        -- susbstitute(replace the current file with the harpoons
        -- with this the given index ) 
        -- harpoon file 1-4 with new files
        vim.keymap.set("n", "<leader>j", function()
            harpoon:list():replace_at(1)
        end)
        vim.keymap.set("n", "<leader>k", function()
            harpoon:list():replace_at(2)
        end)
        vim.keymap.set("n", "<leader>l", function()
            harpoon:list():replace_at(3)
        end)
        vim.keymap.set("n", "<leader>;", function()
            harpoon:list():replace_at(4)
        end)

    end,
}