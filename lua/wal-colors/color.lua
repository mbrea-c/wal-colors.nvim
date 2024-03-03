local M = {}

local function parse_rgb(s)
  assert(s:sub(1, 1) == "#")
  local r = tonumber(s:sub(2, 3), 16)
  local g = tonumber(s:sub(4, 5), 16)
  local b = tonumber(s:sub(6, 7), 16)
  return r, g, b
end

local function rgb_to_hsv(r, g, b)
    r, g, b = r / 255, g / 255, b / 255
    local max = math.max(r, g, b)
    local min = math.min(r, g, b)
    local h, s, v
    local d = max - min
    v = max
    if max ~= 0 then
        s = d / max
    else
        return 0, 0, v
    end
    if max == min then
        h = 0
    elseif max == r then
        h = (g - b) / d + (g < b and 6 or 0)
    elseif max == g then
        h = (b - r) / d + 2
    else
        h = (r - g) / d + 4
    end
    h = h / 6
    return h, s, v
end

local function hsv_to_rgb(h, s, v)
    local r, g, b
    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    i = i % 6

    if i == 0 then
        r, g, b = v, t, p
    elseif i == 1 then
        r, g, b = q, v, p
    elseif i == 2 then
        r, g, b = p, v, t
    elseif i == 3 then
        r, g, b = p, q, v
    elseif i == 4 then
        r, g, b = t, p, v
    else
        r, g, b = v, p, q
    end

    return math.floor(r * 255 + 0.5), math.floor(g * 255 + 0.5),
           math.floor(b * 255 + 0.5)
end

--- @class Color
--- @field hue number
--- @field saturation number
--- @field value number
--- @field is_dark_colorscheme boolean
local Color = {}

function Color:set_is_dark_colorscheme(is_dark_colorscheme)
  self.is_dark_colorscheme = is_dark_colorscheme
end

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

function Color:highlighted(ratio)
  if self.is_dark_colorscheme then
    return self:lightened(ratio)
  else
    return self:darkened(ratio)
  end
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
  local rgb_hexstring = string.format("#%02X%02X%02X", r, g, b)
  return rgb_hexstring
end

M.Color = Color

return M
