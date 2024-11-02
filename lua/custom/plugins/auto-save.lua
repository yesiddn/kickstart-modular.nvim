-- This plugin automatically saves your file after certain amount of time of inactivity.

return {
  {
  "okuuva/auto-save.nvim",
  version = '*', -- see https://devhints.io/semver, alternatively use '*' to use the latest tagged release
  cmd = "ASToggle", -- optional for lazy loading on command
  event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
  opts = {
    -- your config goes here
    -- or just leave it empty :)
  },
},
}