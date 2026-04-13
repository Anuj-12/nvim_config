-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Setting a keymap
-- vim.keymap.set{mode, keymap, command, opts}
-- keymap: <x>
-- command: <cmd> w <CR> -> in command mode press w and enter

-- Disable the spacebar key in normal and view mode
vim.keymap.set({'n', 'v'}, '<Space>', '<Nop>', {silent = true}) -- Nop = no operation

-- Var for conciseness
local opts = {noremap = true, silent = true}    -- keybinds don't remap and cmd dont show in cmd line

-- Delete single character without copying to register
vim.keymap.set('n', 'x', '"_x', opts)

-- Resize with arrows
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)

-- Buffer 
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>x', ':Bdelete!<CR>', opts) -- close buffer
vim.keymap.set('n', '<leader>b', ':<cmd> enew <CR>', opts)  -- new buffer

-- Window management
vim.keymap.set('n', '<leader>v', '<C-w>v', opts)    -- split vertically
vim.keymap.set('n', '<leader>h', '<C-w>s', opts)    -- split horizontally
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts)    -- close current split

-- Navigate splits
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
