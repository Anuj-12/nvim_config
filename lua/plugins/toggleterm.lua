return {
  "akinsho/toggleterm.nvim",
  version = "*",

  config = function()
    require("toggleterm").setup({
      size = 15,
      open_mapping = [[<C-\>]],
      direction = "float",
      shade_terminals = true,
      start_in_insert = true,
      persist_size = true,
      close_on_exit = true,
    })

    local Terminal = require("toggleterm.terminal").Terminal

    -- floating terminal
    local float = Terminal:new({ direction = "float" })

    function _FLOAT_TOGGLE()
      float:toggle()
    end

    -- horizontal terminal
    local horizontal = Terminal:new({ direction = "horizontal", size = 12 })

    function _HORIZ_TOGGLE()
      horizontal:toggle()
    end

    -- vertical terminal
    local vertical = Terminal:new({ direction = "vertical", size = vim.o.columns * 0.4 })

    function _VERT_TOGGLE()
      vertical:toggle()
    end

    -- keymaps
    vim.keymap.set("n", "<leader>tf", "<cmd>lua _FLOAT_TOGGLE()<CR>", { desc = "Terminal Float" })
    vim.keymap.set("n", "<leader>th", "<cmd>lua _HORIZ_TOGGLE()<CR>", { desc = "Terminal Horizontal" })
    vim.keymap.set("n", "<leader>tv", "<cmd>lua _VERT_TOGGLE()<CR>", { desc = "Terminal Vertical" })

    -- quick escape from terminal mode
    vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
  end,
}
