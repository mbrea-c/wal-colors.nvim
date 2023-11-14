local M = {}

local Color = require("wal-colors.color").Color

--- Color specification table type
--- @class ColorSpec
--- @field is_dark boolean
--- @field background Color
--- @field foreground Color
--- @field cursor Color
--- @field color0 Color
--- @field color1 Color
--- @field color2 Color
--- @field color3 Color
--- @field color4 Color
--- @field color5 Color
--- @field color6 Color
--- @field color7 Color
--- @field color8 Color
--- @field color9 Color
--- @field color10 Color
--- @field color11 Color
--- @field color12 Color
--- @field color13 Color
--- @field color14 Color
--- @field color15 Color
--- @field color16 Color
--- @field black Color
--- @field red Color
--- @field green Color
--- @field yellow Color
--- @field blue Color
--- @field magenta Color
--- @field cyan Color
--- @field white Color
--- @field bright_black Color
--- @field bright_red Color
--- @field bright_green Color
--- @field bright_yellow Color
--- @field bright_blue Color
--- @field bright_magenta Color
--- @field bright_cyan Color
--- @field bright_white Color
local ColorSpec = {}

--- Loads the wal cache into vimscript variables, and parses it into a ColorSpec
--- table
--- @return ColorSpec
function ColorSpec.load()
  vim.cmd([[ source $HOME/.cache/wal/colors-wal.vim ]])

  local colors = {}

  colors = setmetatable(colors, ColorSpec)

  colors.background = Color.from_rgb_hexstring(vim.g.background)
  colors.foreground = Color.from_rgb_hexstring(vim.g.foreground)
  colors.cursor = Color.from_rgb_hexstring(vim.g.cursor)
  colors.color0 = Color.from_rgb_hexstring(vim.g.color0)
  colors.color1 = Color.from_rgb_hexstring(vim.g.color1)
  colors.color2 = Color.from_rgb_hexstring(vim.g.color2)
  colors.color3 = Color.from_rgb_hexstring(vim.g.color3)
  colors.color4 = Color.from_rgb_hexstring(vim.g.color4)
  colors.color5 = Color.from_rgb_hexstring(vim.g.color5)
  colors.color6 = Color.from_rgb_hexstring(vim.g.color6)
  colors.color7 = Color.from_rgb_hexstring(vim.g.color7)
  colors.color8 = Color.from_rgb_hexstring(vim.g.color8)
  colors.color9 = Color.from_rgb_hexstring(vim.g.color9)
  colors.color10 = Color.from_rgb_hexstring(vim.g.color10)
  colors.color11 = Color.from_rgb_hexstring(vim.g.color11)
  colors.color12 = Color.from_rgb_hexstring(vim.g.color12)
  colors.color13 = Color.from_rgb_hexstring(vim.g.color13)
  colors.color14 = Color.from_rgb_hexstring(vim.g.color14)
  colors.color15 = Color.from_rgb_hexstring(vim.g.color15)

  colors.is_dark = colors.background.value < 0.5

  colors.background:set_is_dark_colorscheme(colors.is_dark)
  colors.foreground:set_is_dark_colorscheme(colors.is_dark)
  colors.cursor:set_is_dark_colorscheme(colors.is_dark)
  colors.color0:set_is_dark_colorscheme(colors.is_dark)
  colors.color1:set_is_dark_colorscheme(colors.is_dark)
  colors.color2:set_is_dark_colorscheme(colors.is_dark)
  colors.color3:set_is_dark_colorscheme(colors.is_dark)
  colors.color4:set_is_dark_colorscheme(colors.is_dark)
  colors.color5:set_is_dark_colorscheme(colors.is_dark)
  colors.color6:set_is_dark_colorscheme(colors.is_dark)
  colors.color7:set_is_dark_colorscheme(colors.is_dark)
  colors.color8:set_is_dark_colorscheme(colors.is_dark)
  colors.color9:set_is_dark_colorscheme(colors.is_dark)
  colors.color10:set_is_dark_colorscheme(colors.is_dark)
  colors.color11:set_is_dark_colorscheme(colors.is_dark)
  colors.color12:set_is_dark_colorscheme(colors.is_dark)
  colors.color13:set_is_dark_colorscheme(colors.is_dark)
  colors.color14:set_is_dark_colorscheme(colors.is_dark)
  colors.color15:set_is_dark_colorscheme(colors.is_dark)

  colors.black = colors.color0
  colors.red = colors.color1
  colors.green = colors.color2
  colors.yellow = colors.color3
  colors.blue = colors.color4
  colors.magenta = colors.color5
  colors.cyan = colors.color6
  colors.white = colors.color7
  colors.bright_black = colors.color8
  colors.bright_red = colors.color9
  colors.bright_green = colors.color10
  colors.bright_yellow = colors.color11
  colors.bright_blue = colors.color12
  colors.bright_magenta = colors.color13
  colors.bright_cyan = colors.color14
  colors.bright_white = colors.color15

  return colors
end

M.ColorSpec = ColorSpec

return M
