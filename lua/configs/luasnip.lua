local user_settings = astronvim.user_plugin_opts "luasnip"
local luasnip_avail, luasnip = pcall(require, "luasnip")
local loader_avail, loader = pcall(require, "luasnip/loaders/from_snipmate")
if not (luasnip_avail and loader_avail) then return end
if user_settings.vscode_snippet_paths ~= nil then loader.lazy_load { paths = user_settings.vscode_snippet_paths } end
loader.lazy_load()
if type(user_settings.filetype_extend) == "table" then
  for filetype, snippets in pairs(user_settings.filetype_extend) do
    luasnip.filetype_extend(filetype, snippets)
  end
end
