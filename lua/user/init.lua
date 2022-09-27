--              AstroNvim Configuration Table
-- All configuration changes should go inside of the table below

-- You can think of a Lua "table" as a dictionary like data structure the
-- normal format is "key = value". These also handle array like data structures
-- where a value with no key simply has an implicit numeric key
local config = {
  lsp = {
    server_registration = function(server, opts)
      if server == 'rust_analyzer' then
        require('rust-tools').setup({server = opts})
        return
      end

      require('lspconfig')[server].setup(opts)
    end
  },
  plugins = {
    init = {
      {'simrat39/rust-tools.nvim'}
    }
  }
}

return config
