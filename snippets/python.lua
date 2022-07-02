local ls = require('luasnip')
local s = ls.s
local i = ls.i
local t = ls.t

local d = ls.dynamic_mode
local c = ls.choice_mode
local f = ls.function_mode
local sn = ls.snippet_mode

local fmt = require('luasnip.extras.fmt').fmt
local rep = require('luasnip.extras').rep

local snippets, autosnippets = {}, {}

return snippets, autosnippets
