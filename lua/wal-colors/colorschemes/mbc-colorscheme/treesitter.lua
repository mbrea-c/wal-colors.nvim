local M = {}

M.setup = function(set_hl, get_hl, colors)
  set_hl("@note", { fg = colors.background, bg = colors.color5 })

  set_hl("@comment", { fg = colors.color8 })
  set_hl("@comment.documentation", { fg = colors.color8:lightened(0.2), italic = true }) -- e.g. javadoc

  set_hl("@warning", { fg = colors.background, bg = colors.color5 })
  set_hl("@danger", { fg = colors.background, bg = colors.color3 })
  set_hl("@constructor", { fg = colors.color6 })                                                -- For constructor calls and definitions: `= { }` in Lua, and Java constructors)
  set_hl("@conditional", { fg = colors.color2 })                                                -- For keywords related to conditionnals)
  set_hl("@constant", { fg = colors.color6:darkened(), bold = true })
  set_hl("@field", { fg = colors.cyan:darkened() })                                             -- For fields
  set_hl("@function", { fg = colors.blue, bold = true })                                        -- For function (calls and definitions))
  set_hl("@keyword", { fg = colors.color2, bold = true })                                       -- For keywords that don't fall in previous categories.
  set_hl("@keyword.function", { fg = colors.color2:darkened(0.2), bold = true, italic = true }) -- For keywords used to define a fuction.
  set_hl("@label", { fg = colors.color7 })                                                      -- For labels: `label:` in C and `:label:` in Lua.
  set_hl("@method", { fg = colors.cyan, bold = true })                                          -- For function (calls and definitions))
  set_hl("@namespace", { fg = colors.color6, bold = true })                                     -- For identifiers referring to modules and namespaces.
  set_hl("@number", { fg = colors.red:lightened() })                                            -- For all numbers
  set_hl("@float", { fg = colors.red:mixed_hsv(colors.cyan) })                                  -- For all numbers
  set_hl("@operator", { fg = colors.color3 })                                                   -- For any operator: `+`, but also `->` and `*` in C.
  set_hl("@operator", { fg = colors.color3, bold = true })                                      -- For keyword operators: `not`, but also `in` and `is` in Python.
  set_hl("@parameter", { fg = colors.blue })                                                    -- For parameters of a function.
  set_hl("@property", { fg = colors.cyan:darkened() })                                          -- Same as `@field`.
  set_hl("@punctuation.delimiter", { fg = colors.yellow:darkened(0.2) })                        -- For delimiters ie: `.`
  set_hl("@punctuation.bracket", { fg = colors.yellow:desaturated(0.2):lightened(0.2) })        -- For brackets and parens.
  set_hl("@punctuation.special", { fg = colors.color3 })                                        -- For special punctutation that does not fall in the catagories before.
  set_hl("@repeat", { fg = colors.color2 })                                                     -- For keywords related to loops.
  set_hl("@string", { fg = colors.color1 })                                                     -- For strings.
  set_hl("@string.regex", { fg = colors.color7 })                                               -- For regexes.
  set_hl("@string.escape", { fg = colors.color6 })                                              -- For escape characters within a string.
  set_hl("@symbol", { fg = colors.foreground:darkened(0.2) })                                   -- For escape characters within a string.
  set_hl("@type", { fg = colors.color2 })
  set_hl("@type.qualifier", { fg = colors.color2:lightened(), italic = true })
  set_hl("@type.builtin", { fg = colors.color2:darkened() })
  set_hl("@variable", { fg = colors.blue:mixed_rgb(colors.cyan):desaturated() }) -- Variable names that are defined by the languages, like `this` or `self`.
  set_hl("@variable.builtin", { fg = colors.color11 })                           -- Variable names that are defined by the languages, like `this` or `self`.
  set_hl("@text", { fg = colors.foreground:darkened() })                         -- For strings considered text in a markup language.
  set_hl("@text.emphasis", { italic = true })                                    -- For text to be represented strong.
  set_hl("@text.strong", { bold = true })                                        -- For text to be represented with emphasis.
  set_hl("@text.underline", { underline = true })                                -- For text to be represented with an underline.
  set_hl("@text.strike", { strikethrough = true })                               -- For strikethrough text.
  set_hl("@text.title", { bold = true })                                         -- Text that is part of a title.
  set_hl("@text.literal", nil)                                                   -- Literal text.
  set_hl("@text.uri", { fg = colors.color4:darkened(0.3), underline = true })    -- Any URI like a link or email.
  set_hl("@text.math", { fg = colors.color1 })                                   -- For latex math
  set_hl("@text.reference", { fg = colors.color8 })
  set_hl("@text.environment", { fg = colors.color6 })
  set_hl("@text.environment.name", { fg = colors.color6 })
  set_hl("@text.environment.name", { fg = colors.color6 })
  set_hl("@text.note", nil)
  set_hl("@text.warning", nil)
  set_hl("@text.danger", nil)
end

return M
