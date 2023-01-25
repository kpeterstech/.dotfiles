local ls = require("luasnip")

ls.config.set_config({
    history = true,
    updateevents = "TextChanged, TextChangedI",
    enable_autosnippets = true
})

vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/lua/kpeterstech/luasnip.lua<CR>")

ls.snippets = {
    all = {
        ls.parser.parse_snippet("expand", "-- this is what was expanded!")
    },

    lua = {

    },
}
