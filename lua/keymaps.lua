-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Insert newline below and above in insert mode
vim.keymap.set('i', '<S-CR>', '<Esc>o', { desc = 'Insert newline below and stay in insert mode', remap = true })
vim.keymap.set('i', '<C-CR>', '<Esc>O', { desc = 'Insert newline above and stay in insert mode', remap = true })

-- Add remaps to replace Home and End keys
vim.keymap.set({ 'i', 'n', 'v' }, '<S-Left>', '<Home>', { remap = true })
vim.keymap.set({ 'i', 'n', 'v' }, '<S-Right>', '<End>', { remap = true })
vim.keymap.set({ 'i', 'n' }, '<M-Left>', vim.cmd.tabprevious, { desc = 'Go to previous tab' })
vim.keymap.set({ 'i', 'n' }, '<M-Right>', vim.cmd.tabnext, { desc = 'Go to previous tab' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader>w', vim.cmd.wall, { desc = 'Write all changed buffers' })
