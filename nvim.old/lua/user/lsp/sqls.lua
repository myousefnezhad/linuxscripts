local lspconfig = require("lspconfig")

lspconfig.sqls.setup {
  cmd = { "/WORKSPACE/go/bin/sqls", "--config", "/home/tony/.config/sqls/config.yaml" },
  on_attach = function(client, bufnr) require("sqls").on_attach(client, bufnr) end,
}


-- local util = require 'lspconfig.util'
--
-- require 'lspconfig'.sqlls.setup {
--   cmd = { "sql-language-server", "up", "--method", "stdio" },
--   filetypes = { "sql", "mysql" },
-- }
--
-- return {
--   default_config = {
--     cmd = { 'sql-language-server', 'up', '--method', 'stdio' },
--     filetypes = { 'sql', 'mysql' },
--     root_dir = util.root_pattern '.sqllsrc.json',
--     settings = {},
--   },
--   docs = {
--     description = [[
-- https://github.com/joe-re/sql-language-server
--
-- This LSP can be installed via  `npm`. Find further instructions on manual installation of the sql-language-server at [joe-re/sql-language-server](https://github.com/joe-re/sql-language-server).
-- <br>
--     ]],
--   },
-- }
