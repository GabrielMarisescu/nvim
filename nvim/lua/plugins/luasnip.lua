return {
  {
    "L3MON4D3/LuaSnip",
    config = function()
      -- require("luasnip.loaders.from_vscode").load({ paths = "~/.config/nvim/lua/luasnippets/" })
      require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/luasnippets" })
    end,
  },
}
