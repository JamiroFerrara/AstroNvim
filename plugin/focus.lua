-- Enable auto highlighting for focussed/unfocussed windows
-- Default: false
require("focus").setup({winhighlight = true, excluded_filetypes = {"toggleterm, harpoon-menu"}})

-- By default, the highlight groups are setup as such:
--   hi default link FocusedWindow VertSplit
--   hi default link UnfocusedWindow Normal
-- To change them, you can link them to a different highlight group, see `:h hi-default` for more info.
-- vim.cmd('hi link UnfocusedWindow BufferLineTabSeparator')
-- vim.cmd('hi link FocusedWindow EndOfBufger')
