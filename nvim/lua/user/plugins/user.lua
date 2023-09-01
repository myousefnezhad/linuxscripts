return {
  'mxsdev/nvim-dap-vscode-js',
  'simrat39/rust-tools.nvim',
  'airblade/vim-gitgutter',
  'codota/tabnine-nvim',
  'tzachar/cmp-tabnine',
  {
    'saecki/crates.nvim',
    ft = { 'rust', 'toml' },
    config = function(_, opts)
      local crates = require("crates")
      crates.setup(opts)
      crates.show()
    end,
  },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   opts = function()
  --     local M = require("plugins.cmd")
  --     table.insert(M.source, { name = "crates" })
  --     return M
  --   end,
  -- },
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
