local ls = require("luasnip")
local s = ls.s
local i = ls.i
local t = ls.t

local d = ls.dynamic_node
local c = ls.choice_node
local f = ls.function_node
local sn = ls.snippet_node

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local snippets, autosnippets = {}, {}

local includeEverything = s("include", {
	t("#include<bits/stdc++.h>"),
	t("using namespace std;"),
	t("int main() {"),
	i(1, "// Your Code"),
	t("}"),
})

local leetCodeBoilerplate = s("leetc", {
	t("#include <bits/stdc++.h>"),
	t("using namespace std;"),
	i(1, "// Your Code"),
	t("int main() {"),
	t("Solution();"),
	t("return 0;"),
	t("}"),
})

local autotest = s("autotest", { t("Auto Triggered") })

table.insert(autosnippets, autotest)

-- Adding Custom Snippets to table
table.insert(snippets, leetCodeBoilerplate)
table.insert(snippets, includeEverything)

return snippets, autosnippets
