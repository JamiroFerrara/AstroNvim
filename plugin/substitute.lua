-- Lua
vim.keymap.set("n", "r", "<cmd>lua require('substitute').operator()<cr>", { noremap = true })
vim.keymap.set("n", "rr", "<cmd>lua require('substitute').line()<cr>", { noremap = true })
vim.keymap.set("n", "R", "<cmd>lua require('substitute').eol()<cr>", { noremap = true })
vim.keymap.set("x", "r", "<cmd>lua require('substitute').visual()<cr>", { noremap = true })

require("substitute").setup({
    on_substitute = nil,
    yank_substituted_text = false,
    range = {
        prefix = "r",
        prompt_current_text = false,
        confirm = false,
        complete_word = false,
        motion1 = false,
        motion2 = false,
        suffix = "",
    },
    exchange = {
        motion = false,
        use_esc_to_cancel = true,
    },
})
