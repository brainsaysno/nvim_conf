-- Reference https://www.ejmastnak.com/tutorials/vim-latex/luasnip/
local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmta = require 'luasnip.extras.fmt'.fmta

return {
  -- Quarto Frontmatter
  s({ trig = ";fm ", snippetType = "autosnippet" },
    fmta(
      [[
    ---
    title: "<>"
    author: "Nicolás Russo"
    ---
    ]],
      { i(1) }
    )
  ),
  -- Flowchart
  s(
    { trig = ";fl ", dscr = "Mermaid Flowchart LR", snippetType = "autosnippet" },
    fmta(
      [[
      ```{mermaid}
      flowchart LR
        <> --->> <>
      ```
    ]],
      { i(1), i(2) }
    )
  ),
  -- Plot
  s(
    { trig = ";p ", dscr = "Julia Plot", snippetType = "autosnippet" },
    fmta(
      [[
      ```{julia}
      using Plots
      x = <>
      y = <>

      plot(y, x)
      ```
    ]],
      { i(1), i(2) }
    )
  ),
  -- Latex
  s({ trig = ";ltx ", snippetType = "autosnippet" },
    fmta(
      [[
      $$
        <>
      $$
    ]],
      { i(1) }
    )
  ),
  s({ trig = ";align ", snippetType = "autosnippet" },
    fmta(
      [[
      $$
      \begin{align*}
        <>
      \end{align*}
      $$
    ]],
      { i(1) }
    )
  ),
  s({ trig = ";f ", snippetType = "autosnippet" },
    fmta(
      "\\frac{<>}{<>}",
      { i(1), i(2) }
    )
  ),
  s({ trig = ";sum ", snippetType = "autosnippet" },
    fmta(
      "\\sum_{i = <>}^{<>}{<>}",
      { i(1, "0"), i(2, "n"), i(3) }
    )
  ),
  s({ trig = ";lim ", snippetType = "autosnippet" },
    fmta(
      "\\lim_{<> \\to \\infty}{<>}",
      { i(1, "n"), i(2) }
    )
  ),
  s({ trig = ";a ", snippetType = "autosnippet" },
    {
      t("\\alpha "),
    }
  ),
  s({ trig = ";b ", snippetType = "autosnippet" },
    {
      t("\\beta "),
    }
  ),
  s({ trig = ";g ", snippetType = "autosnippet" },
    {
      t("\\gamma "),
    }
  ),
}
