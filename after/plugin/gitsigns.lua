require('gitsigns').setup{
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation
    map('n', ']c', function()
      if vim.wo.diff then return ']c' end
      vim.schedule(function() gs.next_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    map('n', '[c', function()
      if vim.wo.diff then return '[c' end
      vim.schedule(function() gs.prev_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    -- Actions
    map('n', '<leader>hs', gs.stage_hunk, {desc = "Git: stage hunk"})
    map('n', '<leader>hr', gs.reset_hunk, {desc = "Git: reset hunk"})
    map('v', '<leader>hs', function() gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end, {desc = "Git: stage hunk"})
    map('v', '<leader>hr', function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end, {desc = "Git: reset hunk"})
    map('n', '<leader>hS', gs.stage_buffer, {desc = "Git: stage buffer"})
    map('n', '<leader>hu', gs.undo_stage_hunk, {desc = "Git: undo stage hunk"})
    map('n', '<leader>hR', gs.reset_buffer, {desc = "Git: reset buffer"})
    map('n', '<leader>hp', gs.preview_hunk, {desc = "Git: preview hunk"})
    map('n', '<leader>hb', function() gs.blame_line{full=true} end, {desc = "Git: blame line"})
    map('n', '<leader>tb', gs.toggle_current_line_blame, {desc = "Git: toggle inline blame"})
    map('n', '<leader>hd', gs.diffthis, {desc = "Git: diff this"})
    map('n', '<leader>hD', function() gs.diffthis('~') end, {desc = "Git: diff"})
    map('n', '<leader>td', gs.toggle_deleted, {desc = "Git: toggle deleted"})

    -- Text object
    map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
  end
}
