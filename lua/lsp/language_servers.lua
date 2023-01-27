-- local lsp_installer = require('nvim-lsp-installer')
-- lsp_installer.on_server_ready(function(server)
--   local capabilities = require('cmp_nvim_lsp').default_capabilities()
--   local opts = {capabilities = capabilities}
--   if server.name == "sumneko_lua" then
--     opts = vim.tbl_deep_extend("force", {
--       settings = {
--         Lua = {
--           runtime = {version = 'LuaJIT', path = vim.split(package.path, ';')},
--           diagnostics = {globals = {'vim'}},
--           workspace = {library = vim.api.nvim_get_runtime_file("", true), checkThirdParty = false},
--           telemetry = {enable = false}
--         }
--       }
--     }, opts)
--   end
--   server:setup(opts)
-- end)
--
--
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
local langServers = { 'html', 'cssls', 'tsserver', 'sumneko_lua', 'pyright', 'jsonls', 'emmet_ls' }
-- capabilities = cmp_nvim_lsp.default_capabilities(capabilities)

local on_attach = function(client, bufnr)
  -- if client.name == "tsserver" then client.server_capabilities.documentFormattingProvider = false end

  -- if client.name == "sumneko_lua" then
  --   client.server_capabilities.documentFormattingProvider = false
  -- end

  -- local status_ok, illuminate = pcall(require, "illuminate")
  -- if not status_ok then return end
  -- illuminate.on_attach(client)
end

local settings = {
  ui = {
    border = "none",
    icons = { package_installed = "◍", package_pending = "◍", package_uninstalled = "◍" }
  },
  log_level = vim.log.levels.INFO,
  max_concurrent_installers = 4
}

require("mason").setup(settings)
require("mason-lspconfig").setup({ ensure_installed = langServers, automatic_installation = true })

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then return end
local opts = {}

for _, server in pairs(langServers) do
  opts = { capabilities = capabilities }

  server = vim.split(server, "@")[1]

  local require_ok, conf_opts = pcall(require, "lsp.settings." .. server)
  if require_ok then opts = vim.tbl_deep_extend("force", conf_opts, opts) end

  lspconfig[server].setup(opts)
end
