-- Indent Blankline

local highlight = {
    "CustomIndentHighlight",
}

local hooks = require "ibl.hooks"

-- Triggered every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    local current_scheme = vim.g.colors_name or ""

    if current_scheme:find("kanagawa") then
        -- Specific color for Kanagawa
        vim.api.nvim_set_hl(0, "CustomIndentHighlight", { fg = "#313244" })
    else
        -- Fallback: Link to the default IBL highlight or another group
        -- This effectively uses the "default" look for other schemes
        vim.api.nvim_set_hl(0, "CustomIndentHighlight", { link = "IblIndent" })
    end
end)

require("ibl").setup {
    indent = { highlight = highlight },
    whitespace = {
        highlight = highlight,
    },
    scope = { enabled = false },
}
