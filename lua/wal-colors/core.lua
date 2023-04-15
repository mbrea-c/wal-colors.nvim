local M = {}

local Color = require("wal-colors.color").Color

--- Color specification table type
--- @class ColorSpec
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

  local colors = {
    background = Color.from_rgb_hexstring(vim.g.background),
    foreground = Color.from_rgb_hexstring(vim.g.foreground),
    cursor = Color.from_rgb_hexstring(vim.g.cursor),
    color0 = Color.from_rgb_hexstring(vim.g.color0),
    color1 = Color.from_rgb_hexstring(vim.g.color1),
    color2 = Color.from_rgb_hexstring(vim.g.color2),
    color3 = Color.from_rgb_hexstring(vim.g.color3),
    color4 = Color.from_rgb_hexstring(vim.g.color4),
    color5 = Color.from_rgb_hexstring(vim.g.color5),
    color6 = Color.from_rgb_hexstring(vim.g.color6),
    color7 = Color.from_rgb_hexstring(vim.g.color7),
    color8 = Color.from_rgb_hexstring(vim.g.color8),
    color9 = Color.from_rgb_hexstring(vim.g.color9),
    color10 = Color.from_rgb_hexstring(vim.g.color10),
    color11 = Color.from_rgb_hexstring(vim.g.color11),
    color12 = Color.from_rgb_hexstring(vim.g.color12),
    color13 = Color.from_rgb_hexstring(vim.g.color13),
    color14 = Color.from_rgb_hexstring(vim.g.color14),
    color15 = Color.from_rgb_hexstring(vim.g.color15),
  }

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

  return setmetatable(colors, ColorSpec)
end

M.ColorSpec = ColorSpec

return M
