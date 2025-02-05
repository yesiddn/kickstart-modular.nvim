-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Show info about the current buffer in the statusline
--  See `:help vim.lsp.buf.hover()`
-- vim.api.nvim_create_autocmd('CursorHold', {
--   desc = 'Show info about the current buffer in the statusline',
--   group = vim.api.nvim_create_augroup('kickstart-show-info', { clear = true }),
--   pattern = '*',
--   callback = function()
--     vim.lsp.buf.hover()
--   end,
-- })
vim.keymap.set('n', '<Leader>bt', function()
  vim.lsp.buf.hover()
end, { desc = 'Show hover information for the current symbol (Buffer)', noremap = true, silent = true })



-- Keymap to open a vertical split on the right using |
vim.keymap.set('n', '<leader>|', ':vsp<CR>', { noremap = true, silent = true, desc = "Open vertical split" })

-- Keymap to open a horizontal split below using -
vim.keymap.set('n', '<leader>-', ':sp<CR>', { noremap = true, silent = true, desc = "Open horizontal split" })

-- Keymap to move lines up and down
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true, desc = "Move line down" })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true, desc = "Move line up" })
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "Move line down" })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "Move line up" })

-- Keymap to show info about the current buffer in the statusline
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })

-- vim: ts=2 sts=2 sw=2 et
