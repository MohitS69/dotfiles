return {
    "nvim-tree/nvim-web-devicons",
    config = function()
        require("nvim-web-devicons").set_icon({
            gql = {
                icon = "",
                color = "#e535ab",
                cterm_color = "199",
                name = "GraphQL"
            },
            js = {
                icon = "󰌞",
                color = "#cbcb41",
                cterm_color = "185",
                name = "Js"
            },
            ts = {
                icon = "󰛦",
                color = "#110af2",
                cterm_color = "74",
                name = "Ts"
            }
        })
    end
}
