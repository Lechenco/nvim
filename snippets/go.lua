local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- Check if is a file ending with `_test.go`
local in_test_file = {
  show_condition = function()
    return vim.bo.filetype == "go" and vim.api.nvim_buf_get_name(0):match("%.go$") and vim.api.nvim_buf_get_name(0):match("_test%.go$")
  end,
  condition = function()
    return vim.bo.filetype == "go" and vim.api.nvim_buf_get_name(0):match("_test%.go$")
  end,
}

return {
    s({  trig = "functest",
          desc = "Test function",
          regTrig = false,
          priority = 100,
        }, {
            t("func Test"), i(1, "abc"), t({"(t *testing.T) {", ""}),
            t("    "), i(2, "// Test Function"),
            t({"", "}"})
        },
        in_test_file
    ),

    s({  trig = "run",
          desc = "New SubTest run",
          regTrig = false,
          priority = 100,
        }, {
            t("t.Run(\""), i(1, "Test Description"), t({"\", func(t *testing.T) {", ""}),
            t({"    assert = assert.New(t)", "    "}), i(2, "// SubTest Function"),
            t({"", "})", ""})
        },
        in_test_file
    ),

    s({  trig = "errnil",
      desc = "Verify if err != nil",
      regTrig = false,
      priority = 50,
    }, {
        t("if err != nil {"),
        t({"", "\t"}), i(1, "// Treat Error"),
        t({"", "}", ""})
    }),
}
