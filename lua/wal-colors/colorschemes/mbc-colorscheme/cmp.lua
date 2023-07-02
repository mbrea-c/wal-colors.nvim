local M = {}

M.setup = function(set_hl, get_hl, colors)
  set_hl("PMenu", { link = "NormalFloat" })
  set_hl("CmpGhostText", { fg = colors.bright_black })

  set_hl("CmpItemAbbrDeprecated", { strikethrough = true, bg = colors.bright_black })
  set_hl("CmpItemAbbrMatch", { fg = colors.blue, bg = "NONE" })
  set_hl("CmpItemAbbrMatchFuzzy", { fg = colors.blue, bg = "NONE" })

  set_hl("CmpItemMenu", { fg = colors.green, italic = true })

  set_hl("CmpItemKindVariable", { bg = colors.cyan:darkened(0.3) })
  set_hl("CmpItemKindInterface", { bg = colors.cyan:darkened(0.3) })
  set_hl("CmpItemKindText", { bg = colors.green:darkened(0.2) })

  set_hl("CmpItemKindFunction", { bg = colors.magenta:darkened(0.2) })
  set_hl("CmpItemKindMethod", { bg = colors.magenta:darkened(0.2) })

  set_hl("CmpItemKindKeyword", { bg = colors.green:darkened(0.1) })
  set_hl("CmpItemKindProperty", { bg = colors.cyan:darkened(0.3) })
  set_hl("CmpItemKindUnit", { fg = colors.foreground })

  set_hl("CmpItemKindSnippet", { bg = colors.green:darkened(0.3) })
  set_hl("CmpItemKindCopilot", { bg = colors.red:mixed_hsv(colors.blue):desaturated(0.3):darkened(0.3) })
  set_hl("CmpItemKindCodeium", { bg = colors.red:mixed_hsv(colors.blue):desaturated(0.3):darkened(0.3) })
end

return M
