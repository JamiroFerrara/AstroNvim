create_cmd = vim.api.nvim_create_user_command

create_cmd("SearchIssue", function()
  require("plugin.research").MenuBrowser()
end, {})
