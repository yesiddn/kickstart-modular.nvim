return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs', -- Sets main module to use for opts
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
    opts = {
      ensure_installed = { 
        'javascript',
        'typescript',
        'tsx',
        'json',
        'html',
        'css', 
        'bash', 
        'c', 
        'diff', 
        'lua', 
        'luadoc', 
        'markdown', 
        'markdown_inline', 
        'query', 
        'vim', 
        'vimdoc' 
      },
      -- Autoinstall languages that are not installed
      auto_install = true,
      highlight = {
        enable = true,
        -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
        --  If you are experiencing weird indenting issues, add the language to
        --  the list of additional_vim_regex_highlighting and disabled languages for indent.
        additional_vim_regex_highlighting = { 'ruby' },
      },
      fold = {
        enable = true,
      },
      indent = { enable = true, disable = { 'ruby' } },
    },
    -- config = function()
    --   local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    --   parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

    --   vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
    --     pattern = { "*.component.html", "*.container.html" },
    --     callback = function()
    --       vim.treesitter.start(nil, "html") -- Usa el parser de HTML o "angular" si tienes uno específico
    --     end,
    --   })
    -- end,
    -- There are additional nvim-treesitter modules that you can use to interact
    -- with nvim-treesitter. You should go explore a few and see what interests you:
    --
    --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
    --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
    --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
  },
  -- Automatically add closing tags for HTML and JSX
  {
    "windwp/nvim-ts-autotag",
    opts = {},
  },
}
-- vim: ts=2 sts=2 sw=2 et
