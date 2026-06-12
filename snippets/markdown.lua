local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
	s({
		trig = "task",
		desc = "List Item:\n- [ ] ",
		regTrig = false,
		priority = 1000,
	}, {
		t("- [ ] "),
		i(1, "task"),
	}),
}
