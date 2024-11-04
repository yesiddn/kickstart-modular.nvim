-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Autoformat 
vim.g.autoformat = true

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true

vim.opt.pumblend = 10 -- Popup blend
vim.opt.pumheight = 10 -- Maximum number of entries in a popup

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true
vim.opt.undolevels = 10000

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smartindent = true -- Insert indents automatically

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.fillchars = {
  vert = "│",
  foldopen = "",
  foldclose = "",
  fold = "·",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
vim.opt.showbreak = '↪ '

-- Neovim configuration to use spaces instead of tabs
vim.opt.expandtab = true      -- Convert tabs to spaces
vim.opt.tabstop = 8           -- Keep the default value at 8 to avoid issues with other editors
vim.opt.shiftround = true     -- Round indent
vim.opt.shiftwidth = 2        -- Number of spaces used for indentation
vim.opt.softtabstop = 2       -- Number of spaces inserted when pressing <Tab> in insert mode
vim.opt.autoindent = true     -- Maintain the indentation of the previous line

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Enable line folding
-- Fold based on expression (treesitter)
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99
vim.opt.foldcolumn = "0"
vim.opt.foldtext = ""
-- vim.opt.foldlevelstart = 1
-- vim.opt.foldnestmax = 4

-- True color support
vim.opt.termguicolors = true

-- Root dir detection
-- Each entry can be:
-- * the name of a detector function like `lsp` or `cwd`
-- * a pattern or array of patterns like `.git` or `lua`.
-- * a function with signature `function(buf) -> string|string[]`
vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }

-- Set the floating window border
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = "rounded" -- Opciones: "none", "single", "double", "rounded", "solid", "shadow"
})

-- Set LSP servers to be ignored when used with `util.root.detectors.lsp`
-- for detecting the LSP root
vim.g.root_lsp_ignore = { "copilot" }

vim.opt.conceallevel = 2 -- Hide * markup for bold and italic, but not markers with substitutions
vim.opt.confirm = true -- Confirm to save changes before exiting modified buffer

vim.opt.wildmode = "longest:full,full" -- Command-line completion mode

vim.opt.winminwidth = 5 -- Minimum window width

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0

-- vim: ts=2 sts=2 sw=2 et
