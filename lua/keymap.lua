-- keymap.lua
--
-- This file defines custom key mappings for Neovim, including navigation, window management, plugin shortcuts, and disabling arrow keys. These mappings enhance productivity and streamline common actions.
--
-- For more information, see:
--   :help vim.keymap.set
--   :help key-mapping
--   https://neovim.io/doc/user/map.html
--
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')
--
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<C-S-]>', '<cmd>move +1<CR>')
vim.keymap.set('n', '<C-S-[>', '<cmd>move -2<CR>')
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('n', 'fp', '<cmd>lua MiniFiles.open()<CR>')
vim.keymap.set('n', 'TT', '<cmd>ToggleTerm<CR>')
vim.keymap.set('n', '<F5>', '<cmd> w <CR><cmd>!python3 %<CR>')
vim.keymap.set('n', '<F6>', '<cmd> w <CR><cmd>!node %<CR>')
vim.keymap.set('n', '<F7>', '<cmd> w <CR><cmd>!go run %<CR>')
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle NvimTree' }) 