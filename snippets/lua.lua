local ls = require('luasnip')
local s = ls.s
local i = ls.i
local t = ls.t

local d = ls.dynamic_node
local c = ls.choice_node
local f = ls.function_node
local sn = ls.snippet_node

local fmt = require('luasnip.extras.fmt').fmt
local rep = require('luasnip.extras').rep

local snippets, autosnippets = {}, {}

local testSnippet = s("testa", {
  t("This is a test snippet: "),
  i(1, "placeholder"),
  t({"", "This is the second line"})
})

local testSnippet2 = s("testb", fmt([[
local {} = function({})
  {}
end
]], {
	i(1, "placeholder"),
	i(2, "placeholder"),
	i(3, "placeholder")
}))

local autotest = s("autotest", {t("Auto Triggered")})



table.insert(autosnippets, autotest)

-- Adding Custom Snippets to table
table.insert(snippets, testSnippet)
table.insert(snippets, testSnippet2)

return snippets, autosnippets

