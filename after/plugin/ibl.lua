-- Indent Blankline

local highlight = {
    "CustomIndentHighlight",
}

local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "CustomIndentHighlight", { fg = "#313244" })
end)

require("ibl").setup {
    indent = { highlight = highlight },
    whitespace = {
        highlight = highlight,
    },
    scope = { enabled = false },
}
