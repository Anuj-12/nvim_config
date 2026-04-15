return {
    -- TODO: TODO + ":"
    -- FIX: FIX + ":"
    -- HACK: HACK + ":"
    --
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    ---@module 'todo-comments'
    ---@type TodoOptions
    ---@diagnostic disable-next-line: missing-fields
    opts = { signs = false },
}
