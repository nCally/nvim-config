local ls = require("luasnip")
local loader = require("luasnip.loaders.from_vscode")

loader.load({paths = { "./custom" }})

vim.keymap.set({"i", "s"}, "<Tab>", function()
    if ls.expand_or_jumpable() then
      ls.expand_or_jump()
    else
      vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, true, true), "n")
    end
  end, {silent = true})
  
  vim.keymap.set({"i", "s"}, "<S-Tab>", function()
    if ls.jumpable(-1) then
      ls.jump(-1)
    else
      vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<S-Tab>", true, true, true), "n")
    end
  end, {silent = true})