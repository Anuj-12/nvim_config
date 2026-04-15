return{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    config = function()
      require("neo-tree").setup({
        filesystem = {
          filtered_items = {
            visible = false, -- show hidden files
          },
        },
      })
      vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle<CR>', { silent = true })
    end
}
