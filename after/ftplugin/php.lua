local lineHL = { bg = '#777BB3' }
local cursorHL = { bg = '#AEB2D5', fg = '#16181A' }

vim.api.nvim_set_hl(0, 'LineNrAbove', lineHL)
vim.api.nvim_set_hl(0, 'CursorLineNr', cursorHL)
vim.api.nvim_set_hl(0, 'LineNrBelow', lineHL)

-- Typing the arrow was never easier
vim.keymap.set('i', '--', '->')
