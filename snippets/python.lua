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

-- Snippet to enter the if name main syntax
local namemain = s("namemain", fmt([[
if __name__ == '__main__':
  {}()
  ]], {
    i(1, "main")
  }))

  local func = s("func", fmt([[
  def {}({}):
  """{}
  {}
  """
  {}
  ]], {
    i(1, "name"),
    i(2, "*args"),
    rep(1),
    i(3, "docstring"),
    i(0, "pass")
  }))

-- Snippet to enter the for loop
local forselect = s("for",
  fmt(
  [[
  for {}:
    {}

    ]], {
      c(1, {
	fmt([[{} in {}]], {
	  i(1, "item"),
	  i(2, "iterable")
	}),
	fmt([[{}, {} in {}]], {
	  i(1, "index"),
	  i(2, "value"),
	  c(3, {
	    i(1, "iterable"),
	    fmt([[enumerate({})]], {
	      i(1, "iterable")
	    }
	    ),
	    fmt([[{}.items()]], {
	      i(1, "dic")
	    })
	  }),
	}),
      }),
      i(0, "pass"),
    }))

local function py_init()
  return
    sn(nil, c(1, {
      t(""),
      sn(1, {
        t(", "),
        i(1),
        d(2, py_init)
      })
    }))
end

local function to_init_assign(args)
  local tab = {}
  local a = args[1][1]
  if #(a) == 0 then
    table.insert(tab, t({"", "\tpass"}))
  else
    local cnt = 1
    for e in string.gmatch(a, " ?([^,]*) ?") do
      if #e > 0 then
        table.insert(tab, t({"","\tself."}))
        -- use a restore-node to be able to keep the possibly changed attribute name
        -- (otherwise this function would always restore the default, even if the user
        -- changed the name)
        table.insert(tab, r(cnt, tostring(cnt), i(nil,e)))
        table.insert(tab, t(" = "))
        table.insert(tab, t(e))
        cnt = cnt+1
      end
    end
  end
  return
    sn(nil, tab)
end

local pyinit = s("pyinit", fmt(
  [[def __init__(self{}):{}]],
  {
    d(1, py_init),
    d(2, to_init_assign, {1})
  }))

-- Snippet for Class Creation
local class = s("class", fmt(
[[
class {}:
  """{}"""

  {}

  def __repr__(self) -> str:
    return self.{}
]], {
  c(1, {
    i(1, "classname"),
    fmt([[{}({})]], {i(1, "classname"), i(2, "parent")})
  }),
  i(2, "Docstring"),
  i(3, "init"),
  i(4, "title")
}
))

-- Snippet for importing modules
local frimp = s("frimp", fmt([[
from {} import {}
]], {
  i(1, "module"),
  i(2, "func")
}))

table.insert(snippets, namemain)
table.insert(snippets, func)
table.insert(snippets, pyinit)
table.insert(snippets, class)
table.insert(snippets, forselect)
table.insert(snippets, frimp)

return snippets, autosnippets
