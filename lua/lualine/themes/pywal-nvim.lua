local core = require("pywal.core")
local colors = core.get_colors()

local pywal = {}

pywal.normal = {
  a = { bg = colors.color4, fg = colors.background },
  b = { bg = colors.shades.background.darker, fg = colors.color7 },
  c = { bg = colors.shades.background.darker, fg = colors.foreground },
}

pywal.insert = {
  a = { bg = colors.color2, fg = colors.background },
  b = { bg = colors.shades.background.darker, fg = colors.color4 },
}

pywal.command = {
  a = { bg = colors.color5, fg = colors.background },
  b = { bg = colors.shades.background.darker, fg = colors.color5 },
}

pywal.visual = {
  a = { bg = colors.color6, fg = colors.background },
  b = { bg = colors.shades.background.darker, fg = colors.color6 },
}

pywal.replace = {
  a = { bg = colors.color11, fg = colors.background },
  b = { bg = colors.shades.background.darker, fg = colors.color11 },
}

pywal.inactive = {
  a = { bg = colors.background, fg = colors.color7 },
  b = { bg = colors.shades.background.darker, fg = colors.foreground, gui = "bold" },
  c = { bg = colors.shades.background.darker, fg = colors.foreground },
}

return pywal
