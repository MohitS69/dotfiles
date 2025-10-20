return {
    "ThePrimeagen/harpoon",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local keymap = vim.keymap
      keymap.set("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<CR>", { desc = "adds a file in harpoon" })
      keymap.set("n", "<leader>h", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", { desc = "toggles the harpoon menu" })
      keymap.set("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<CR>", { desc = "Go to next file in harpoon" })
      keymap.set("n", "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<CR>", { desc = "Go to previous file in harpoon" })
    end,
}
