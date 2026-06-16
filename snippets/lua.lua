local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
	s("snippet", {
		t("s({"),
		t('  trig = "'),
		i(1, "trigger"),
		t({ '",', "" }),
		t('  desc = "'),
		i(2, "description"),
		t({ '",', "" }),
		t("  regTrig = "),
		i(3, "false"),
		t({ ",", "" }),
		t("  priority = "),
		i(4, "1000"),
		t({ ",", "" }),
		t({ "}, {", "" }),
		i(5, "-- snippet here"),
		t({ "", "})," }),
	}),
}
