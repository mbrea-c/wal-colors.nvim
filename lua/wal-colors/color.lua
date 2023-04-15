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
  return h * 360, s, v / 255
end

local function hsv_to_rgb(h, s, v)
  v = 255 * v
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

--- @class Color
--- @field hue number
--- @field saturation number
--- @field value number
local Color = {}

function Color:set_value(value)
  -- value is a number between 0 and 1
  self.value = value
end

function Color:set_hue(hue)
  -- hue is a number between 0 and 360
  self.hue = hue
end

function Color:set_saturation(saturation)
  -- saturation is a number between 0 and 1
  self.saturation = saturation
end

function Color:new(h, s, v)
  local new_color = { hue = h, saturation = s, value = v }
  self.__index = self
  return setmetatable(new_color, Color)
end

function Color.from_rgb(r, g, b)
  local h, s, v = rgb_to_hsv(r, g, b)
  return Color:new(h, s, v)
end

function Color.from_rgb_hexstring(string)
  local r, g, b = parse_rgb(string)
  local h, s, v = rgb_to_hsv(r, g, b)
  return Color:new(h, s, v)
end

function Color.black()
  return Color:new(0, 0, 0)
end

function Color:clone()
  return Color:new(self.hue, self.saturation, self.value)
end

function Color:darkened(ratio)
  if ratio == nil then
    ratio = 0.1
  end
  ratio = 1 - ratio
  local new_color = self:clone()
  new_color:set_value(ratio * new_color.value)
  return new_color
end

function Color:lightened(ratio)
  if ratio == nil then
    ratio = 0.1
  end
  ratio = 1 - ratio
  local new_color = self:clone()
  local v = 1 - ratio * (1 - self.value)
  new_color:set_value(v)
  return new_color
end

function Color:desaturated(ratio)
  if ratio == nil then
    ratio = 0.1
  end
  ratio = 1 - ratio
  local new_color = self:clone()
  new_color:set_saturation(ratio * new_color.saturation)
  return new_color
end

function Color:saturated(ratio)
  if ratio == nil then
    ratio = 0.1
  end
  ratio = 1 - ratio
  local new_color = self:clone()
  local s = 1 - ratio * (1 - self.saturation)
  new_color:set_saturation(s)
  return new_color
end

--- Returns a color that is a mix of two colors. The ratio parameter is optional
--- @param other Color
--- @param ratio number | nil
--- @return Color
function Color:mixed_hsv(other, ratio)
  if ratio == nil then
    ratio = 0.5
  end
  local max_hue = math.max(self.hue, other.hue)
  local min_hue = math.min(self.hue, other.hue)
  local new_hue = self.hue * (1 - ratio) + other.hue * ratio
  if 360 + min_hue - max_hue < max_hue - min_hue then
    local left_hue = self.hue
    local right_hue = other.hue
    if left_hue == min_hue then
      left_hue = 360 + left_hue
    else
      right_hue = 360 + right_hue
    end
    new_hue = left_hue * (1 - ratio) + right_hue * ratio
  end
  local new_color = Color:new(
    new_hue,
    self.saturation * (1 - ratio) + other.saturation * ratio,
    self.value * (1 - ratio) + other.value * ratio
  )
  return new_color
end

function Color:mixed_rgb(other, ratio)
  if ratio == nil then
    ratio = 0.5
  end
  local r1, g1, b1 = hsv_to_rgb(self.hue, self.saturation, self.value)
  local r2, g2, b2 = hsv_to_rgb(other.hue, other.saturation, other.value)
  local r = r1 * (1 - ratio) + r2 * ratio
  local g = g1 * (1 - ratio) + g2 * ratio
  local b = b1 * (1 - ratio) + b2 * ratio
  return Color.from_rgb(r, g, b)
end

function Color:out()
  local r, g, b = hsv_to_rgb(self.hue, self.saturation, self.value)
  local rgb_hexstring = string.format("#%2X%2X%2X", r, g, b)
  return rgb_hexstring
end

M.Color = Color

return M
