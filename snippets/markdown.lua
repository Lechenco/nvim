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
    s({  trig = "fmheader",
      desc = "Front Matter header",
      regTrig = false,
      priority = 1,
    }, {
        t({"---", ""}),
        t("title: "), i(1, "Title"),
        t({"", "date: "}), t(os.date("%a, %d %b %Y")), i(2),
        t({"", "tags: "}), i(3, "tag1, tag2"),
        t({"", "---", ""}),
        i(4)
    }),
    s({  trig = "fmtags",
      desc = "Front Matter header with tags",
      regTrig = false,
      priority = 1,
    }, {
        t({"---"}),
        t({"", "tags: "}), i(1, "tag1, tag2"),
        t({"", "---", ""}),
        i(2)
    }),
}
