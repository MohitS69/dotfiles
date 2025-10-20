return {
    "nvim-lualine/lualine.nvim",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
        local lualine = require("lualine")
        local lazy_status = require("lazy.status") -- to configure lazy pending updates count
        lualine.setup({
            options = {
                globalstatus = true,
                section_separators = {left = '', right = ''}
            },
            sections = {
                lualine_x = {
                    {lazy_status.updates, cond = lazy_status.has_updates},
                    {"fileformat"}
                },
                lualine_c = {require("auto-session.lib").current_session_name}
            }
        })
    end
}
