local lineHL = { bg = '#00ADD8' }
local cursorHL = { bg = '#5DC9E2', fg = '#16181A' }

vim.api.nvim_set_hl(0, 'LineNrAbove', lineHL)
vim.api.nvim_set_hl(0, 'CursorLineNr', cursorHL)
vim.api.nvim_set_hl(0, 'LineNrBelow', lineHL)

vim.bo.tabstop = 4
vim.bo.shiftwidth = 4

local format_augroup = vim.api.nvim_create_augroup('ftplugin_go_auto_format', { clear = true })
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.go',
  group = format_augroup,
  callback = function()
    require('go.format').goimports()
  end,
})
