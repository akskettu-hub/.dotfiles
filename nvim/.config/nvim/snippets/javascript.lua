local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local f = ls.function_node
-- local d = ls.dynamic_node
-- local sn = ls.snippet_node

local fmt = require("luasnip.extras.fmt").fmt

return {
  s(
    "arf",
    fmt(
      [[
    const {} = {}({}) => {{
      {}
    }}
  ]],
      {
        i(1, "fname"),
        c(2, { t(""), t("async ") }),
        i(3, "params"),
        i(4, "// TODO: implement"),
      }
    )
  ),

  s(
    "arfs",
    fmt(
      [[
    const {} = {}{} => {}
  ]],
      {
        i(1, "fname"),
        c(2, { t(""), t("async ") }),
        i(3, "params"),
        i(4, "// TODO: implement"),
      }
    )
  ),

  s("ust",
    fmt(
      "const [{}, {}] = {}",
      {
        i(1, "stateName"),
        i(2, "setterName"),
        i(3, "useState()"),
      }
    )
  ),
}
