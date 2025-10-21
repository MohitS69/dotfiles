return {
    "A7Lavinraj/fyler.nvim",
    dependencies = {"nvim-mini/mini.icons"},
    branch = "stable",
    opts = {icon_provider = "nvim_web_devicons"},
    config = function()
        local fyler = require("fyler")
        fyler.setup(
            {
                -- Close explorer when file is selected
                close_on_select = true,
                -- Auto-confirm simple file operations
                confirm_simple = false,
                -- Replace netrw as default explorer
                default_explorer = false,
                -- Git integration
                git_status = {
                    enabled = true,
                    symbols = {
                        Untracked = "?",
                        Added = "+",
                        Modified = "*",
                        Deleted = "x",
                        Renamed = ">",
                        Copied = "~",
                        Conflict = "!",
                        Ignored = "#"
                    }
                },
                hooks = {
                    -- function(path) end
                    on_delete = nil,
                    -- function(src_path, dst_path) end
                    on_rename = nil,
                    -- function(hl_groups, palette) end
                    on_highlight = nil
                },
                -- Directory icons
                icon = {
                    -- directory_collapsed = "",
                    directory_empty = "",
                    -- directory_expanded = ""
                },
                -- Icon provider (none, mini_icons or nvim_web_devicons)
                icon_provider = "mini_icons",
                -- Indentation guides
                indentscope = {
                    enabled = true,
                    group = "FylerIndentMarker",
                    marker = "│"
                },
                -- Key mappings
                mappings = {
                    ["q"] = "CloseView",
                    ["<CR>"] = "Select",
                    ["<C-t>"] = "SelectTab",
                    ["|"] = "SelectVSplit",
                    ["-"] = "SelectSplit",
                    ["^"] = "GotoParent",
                    ["="] = "GotoCwd",
                    ["."] = "GotoNode",
                    ["#"] = "CollapseAll",
                    ["<BS>"] = "CollapseNode"
                },
                popups = {
                    permission = {}
                },
                -- Buffer tracking
                track_current_buffer = true,
                -- Window configuration
                win = {
                    -- Window border style
                    border = "rounded",
                    -- Default window kind
                    kind = "replace",
                    -- Window kind presets
                    kind_presets = {},
                    -- Buffer and window options
                    buf_opts = {}, -- Custom buffer options
                    win_opts = {} -- Custom window options
                }
            }
        )
    end
}
