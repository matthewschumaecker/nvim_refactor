-- move_line.lua
--
-- Provides key mappings and helper functions to move lines or blocks of text up and down in normal, insert, and visual modes in Neovim.
--
-- For more information, see:
--   :help key-mapping
--   https://neovim.io/doc/user/map.html
--
local function move_line_up()
  vim.cmd 'move .-2'
  vim.cmd 'normal! =='
end
local function move_line_down()
  vim.cmd 'move .+1'
  vim.cmd 'normal! =='
end

vim.keymap.set('n', '<A-k>', move_line_up, { noremap = true, silent = true })
vim.keymap.set('n', '<A-j>', move_line_down, { noremap = true, silent = true })
vim.keymap.set('i', '<A-k>', '<Esc>:lua move_line_up()<CR>a', { noremap = true, silent = true })
vim.keymap.set('i', '<A-j>', '<Esc>:lua move_line_down()<CR>a', { noremap = true, silent = true })
vim.keymap.set('v', '<A-k>', ":move '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', '<A-j>', ":move '>+1<CR>gv=gv", { noremap = true, silent = true }) 