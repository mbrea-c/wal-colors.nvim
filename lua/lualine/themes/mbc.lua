local ColorSpec = require("wal-colors.core").ColorSpec
local colors = ColorSpec.load()

local theme = {}

theme.normal = {
  a = { bg = colors.color4:out(), fg = colors.background:out() },
  b = { bg = colors.background:darkened(0.2):out(), fg = colors.color7:out() },
  c = { bg = colors.background:darkened(0.2):out(), fg = colors.foreground:out() },
}

theme.insert = {
  a = { bg = colors.color2:out(), fg = colors.background:out() },
  b = { bg = colors.background:darkened(0.2):out(), fg = colors.color4:out() },
}

theme.command = {
  a = { bg = colors.color5:out(), fg = colors.background:out() },
  b = { bg = colors.background:darkened(0.2):out(), fg = colors.color5:out() },
}

theme.visual = {
  a = { bg = colors.color6:out(), fg = colors.background:out() },
  b = { bg = colors.background:darkened(0.2):out(), fg = colors.color6:out() },
}

theme.replace = {
  a = { bg = colors.color11:out(), fg = colors.background:out() },
  b = { bg = colors.background:darkened(0.2):out(), fg = colors.color11:out() },
}

theme.inactive = {
  a = { bg = colors.background:out(), fg = colors.color7:out() },
  b = { bg = colors.background:darkened(0.2):out(), fg = colors.foreground:out(), bold = true },
  c = { bg = colors.background:darkened(0.2):out(), fg = colors.foreground:out() },
}

return theme
