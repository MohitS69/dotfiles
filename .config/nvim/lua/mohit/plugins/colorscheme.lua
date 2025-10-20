return {
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("solarized-osaka").setup({
                transparent = false, -- Enable this to disable setting the background color
                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = {italic = true},
                    keywords = {italic = false},
                    functions = {italic = false},
                    variables = {italic = false},
                    -- Background styles. Can be "dark", "transparent" or "normal"
                    sidebars = "dark", -- style for sidebars, see below
                    floats = "dark" -- style for floating windows
                }
            })
            vim.cmd([[colorscheme solarized-osaka]])
        end
    }
}
-- return {
-- 	{
-- 		"olimorris/onedarkpro.nvim",
-- 		priority = 1000, -- make sure to load this before all the other start plugins
-- 		config = function()
-- 			require("onedarkpro").setup({
-- 				styles = {
-- 					types = "NONE",
-- 					methods = "NONE",
-- 					numbers = "NONE",
-- 					strings = "NONE",
-- 					comments = "italic",
-- 					keywords = "NONE",
-- 					constants = "NONE",
-- 					functions = "NONE",
-- 					operators = "NONE",
-- 					variables = "NONE",
-- 					parameters = "NONE",
-- 					conditionals = "NONE",
-- 					virtual_text = "italic",
-- 				},
-- 			})
-- 			vim.cmd([[colorscheme onedark]])
-- 		end,
-- 	},
-- }
