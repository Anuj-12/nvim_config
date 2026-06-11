return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    local bufferline = require("bufferline")

    bufferline.setup({
      options = {
        mode = "buffers",
        separator_style = "sloped",
      },
    })

    -- navigate buffers
    vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true })
    vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true })

    -- close buffer
    vim.keymap.set("n", "<leader>c", ":bdelete<CR>", { silent = true })

    -- pick buffer (like telescope-style picker)
    vim.keymap.set("n", "<leader>bp", ":BufferLinePick<CR>", { silent = true })

    -- reorder buffers
    vim.keymap.set("n", "<leader>br", ":BufferLineMoveNext<CR>", { silent = true })
    vim.keymap.set("n", "<leader>bl", ":BufferLineMovePrev<CR>", { silent = true })
  end,
}
