local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local new_line = function()
  return t({ "", "" })
end

ls.add_snippets("typescriptreact", {
  s("rc", {
    t("import React, { FC } from 'react';"),
    new_line(),
    t("import { Typography, Box } from '@illimity/web/ui';"),
    new_line(),
    new_line(),
    t("interface "),
    f(function(_, snip)
      return snip.env.TM_FILENAME_BASE
    end, {}),
    t("Props {}"),
    new_line(),
    new_line(),
    t("export const "),
    f(function(_, snip)
      return snip.env.TM_FILENAME_BASE
    end, {}),
    t(": FC<"),
    f(function(_, snip)
      return snip.env.TM_FILENAME_BASE .. "Props"
    end, {}),
    t("> = ({}"),
    t(") => {"),
    new_line(),
    new_line(),
    t("  return ("),
    new_line(),
    t('    <Box mt="l">'),
    new_line(),
    t('      <Typography variant="h2">'),
    f(function(_, snip)
      return snip.env.TM_FILENAME_BASE -- Display component name
    end, {}),
    t("</Typography>"),
    new_line(),
    t("    </Box>"),
    new_line(),
    t("  );"),
    new_line(),
    t("};"),
  }),
})

ls.add_snippets("typescriptreact", {
  s("im", {
    t("export * from './"),
    i(1), -- Cursor will be placed here
    t("';"),
  }),
})

ls.add_snippets("typescriptreact", {
  s("rh", {
    t("import { useState, useEffect } from 'react';"),
    t({ "", "", "" }),
    t("interface StateType {}"),
    t({ "", "", "const " }),
    f(function(_, snip)
      return snip.env.TM_FILENAME_BASE -- Hook name based on file name
    end, {}),
    t(" = () => {"),
    t({ "", "  " }),
    t("const ["),
    i(2, "state"),
    t(", setState"),
    t("] = useState<StateType>("),
    i(3, "{}"),
    t(");"),
    t({ "", "", "  useEffect(() => {", "    " }),
    i(4, "// effect logic"),
    t({ "", "  }, []);" }),
    t({ "", "", "  return { " }),
    i(5, "state, setState"),
    t(" };"),
    t({ "", "};", "", "" }),
    t("export default "),
    f(function(_, snip)
      return snip.env.TM_FILENAME_BASE
    end, {}),
    t(";"),
  }),
})

ls.add_snippets("typescriptreact", {
  s("fg", {
    t("import { FormGrid } from '@delorean/_shared/components';"),
    t({ "", "" }), -- Two new lines for spacing
    t("<FormGrid columns={2}>"),
    t({ "", "  " }), -- Space for content
    i(1), -- Cursor position for user input inside FormGrid
    t({ "", "</FormGrid>" }), -- Closing tag
  }),
})

ls.add_snippets("typescriptreact", {
  s("us", {
    t({ "", "" }),
    t("const ["),
    i(1, "state"),
    t(", setState] = useState<"),
    i(2, "{}"),
    t(">("),
    i(3, "{}"),
    t(");"),
    t({ "", "" }),
  }),
})

ls.add_snippets("typescriptreact", {
  s("ue", {
    t({ "", "" }),
    t("useEffect(() => {"),
    t({ "", "  " }),
    i(1, "// effect logic"),
    t({ "", "}, []);" }),
  }),
})
