local M = {}

local function parse_rgb(s)
  assert(s:sub(1, 1) == "#")
  local r = tonumber(s:sub(2, 3), 16)
  local g = tonumber(s:sub(4, 5), 16)
  local b = tonumber(s:sub(6, 7), 16)
  return r, g, b
end

local function rgb_to_hsv(r, g, b)
  local K = 0
  if g < b then
    g, b = b, g
    K = -1
  end
  if r < g then
    r, g = g, r
    K = -2 / 6 - K
  end
  local chroma = r - math.min(g, b)
  local h = math.abs(K + (g - b) / (6 * chroma + 1e-20))
  local s = chroma / (r + 1e-20)
  local v = r
  return h * 360, s, v
end

local function hsv_to_rgb(h, s, v)
  if s == 0 then --gray
    return v, v, v
  end
  local H = h / 60
  local i = math.floor(H) --which 1/6 part of hue circle
  local f = H - i
  local p = v * (1 - s)
  local q = v * (1 - s * f)
  local t = v * (1 - s * (1 - f))
  if i == 0 then
    return v, t, p
  elseif i == 1 then
    return q, v, p
  elseif i == 2 then
    return p, v, t
  elseif i == 3 then
    return p, q, v
  elseif i == 4 then
    return t, p, v
  else
    return v, p, q
  end
end

local function darken(v, ratio)
  local h, s, v = rgb_to_hsv(parse_rgb(v))
  local r, g, b = hsv_to_rgb(h, s, ratio * v)
  local light = string.format("#%2X%2X%2X", r, g, b)
end

local function lighten(v, ratio)
  print(v)
  local h, s, v = rgb_to_hsv(parse_rgb(v))
  print(h, s, v)
  local r, g, b = hsv_to_rgb(h, s, 255 - ratio * (255 - v))
  print(r, g, b)
  local light = string.format("#%2X%2X%2X", r, g, b)
  print("Final: ", light)
  return light
end

function M.get_colors()
  vim.cmd([[ source $HOME/.cache/wal/colors-wal.vim ]])

  local colors = {
    background = vim.g.background,
    foreground = vim.g.foreground,
    cursor = vim.g.cursor,
    color0 = vim.g.color0,
    color1 = vim.g.color1,
    color2 = vim.g.color2,
    color3 = vim.g.color3,
    color4 = vim.g.color4,
    color5 = vim.g.color5,
    color6 = vim.g.color6,
    color7 = vim.g.color7,
    color8 = vim.g.color8,
    color9 = vim.g.color9,
    color10 = vim.g.color10,
    color11 = vim.g.color11,
    color12 = vim.g.color12,
    color13 = vim.g.color13,
    color14 = vim.g.color14,
    color15 = vim.g.color15,
  }

  colors.shades = {}

  for k, v in pairs(colors) do
    colors.shades[k] = { light = lighten(v, 0.8), normal = v, dark = darken(v, 0.8) }
  end

  return colors
end

return M
