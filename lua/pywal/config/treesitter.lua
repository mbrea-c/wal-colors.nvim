local M = {}

M.setup = function(set_hl, get_hl, colors)
  -- treesitter

  -- These groups are for the neovim tree-sitter highlights.
  -- As of writing, tree-sitter support is a WIP, group names may color5.
  -- By default, most of these groups link to an appropriate Vim group,
  -- @error -> Error for example, so you do not have to define these unless
  -- you explicitly want to support Treesitter's improved syntax awareness.

  -- @annotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
  -- @attribute         = { };    -- (unstable)  TODO: docs
  -- @boolean           = { };    -- For booleans.
  -- @character         = { };    -- For characters.
  set_hl("@note", { fg = colors.background, bg = colors.color5 })

  set_hl("@comment", { fg = colors.color8 })
  set_hl("@comment.documentation", { fg = colors.shades.color8.lighter, italic = true }) -- e.g. javadoc

  set_hl("@warning", { fg = colors.background, bg = colors.color5 })
  set_hl("@danger", { fg = colors.background, bg = colors.color3 })
  set_hl("@constructor", { fg = colors.color6 }) -- For constructor calls and definitions: `= { }` in Lua, and Java constructors)
  set_hl("@conditional", { fg = colors.color2 }) -- For keywords related to conditionnals)
  set_hl("@constant", { fg = colors.color6.darker, bold = true })
  -- @constant          = { };    -- For constants
  -- @constBuiltin      = { };    -- For constant that are built in the language: `nil` in Lua.
  -- @constMacro        = { };    -- For constants that are defined by macros: `NULL` in C.
  -- @error             = { };    -- For syntax/parser errors.
  -- @exception         = { };    -- For exception related keywords.
  set_hl("@field", { fg = colors.color12 })                -- For fields
  -- @float             = { };    -- For floats.
  set_hl("@function", { fg = colors.color4, bold = true }) -- For function (calls and definitions))
  -- @funcBuiltin       = { };    -- For builtin functions: `table.insert` in Lua.
  -- @funcMacro         = { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
  -- @include           = { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
  set_hl("@keyword", { fg = colors.color2, bold = true })                                       -- For keywords that don't fall in previous categories.
  set_hl("@keyword.function", { fg = colors.shades.color2.darker, bold = true, italic = true }) -- For keywords used to define a fuction.
  set_hl("@label", { fg = colors.color7 })                                                      -- For labels: `label:` in C and `:label:` in Lua.
  -- @method            = { };    -- For method calls and definitions.
  set_hl("@namespace", { fg = colors.color6, bold = true })                                     -- For identifiers referring to modules and namespaces.
  -- @none              = { };    -- TODO: docs
  set_hl("@number", { fg = colors.shades.color1.light })                                        -- For all numbers
  set_hl("@operator", { fg = colors.color3 })                                                   -- For any operator: `+`, but also `->` and `*` in C.
  set_hl("@operator", { fg = colors.color3, bold = true })                                      -- For keyword operators: `not`, but also `in` and `is` in Python.
  set_hl("@parameter", { fg = colors.color4 })                                                  -- For parameters of a function.
  -- @parameterReference= { };    -- For references to parameters of a function.
  set_hl("@property", { fg = colors.color4 })                                                   -- Same as `@field`.
  set_hl("@punctuation.delimiter", { fg = colors.shades.color3.darker })                        -- For delimiters ie: `.`
  set_hl("@punctuation.bracket", { fg = colors.foreground })                                    -- For brackets and parens.
  set_hl("@punctuation.special", { fg = colors.color3 })                                        -- For special punctutation that does not fall in the catagories before.
  set_hl("@repeat", { fg = colors.color2 })                                                     -- For keywords related to loops.
  set_hl("@string", { fg = colors.color1 })                                                     -- For strings.
  set_hl("@string.regex", { fg = colors.color7 })                                               -- For regexes.
  set_hl("@string.escape", { fg = colors.color6 })                                              -- For escape characters within a string.
  -- @symbol            = { };    -- For identifiers referring to symbols or atoms.
  set_hl("@type", { fg = colors.color2 })
  set_hl("@type.qualifier", { fg = colors.shades.color2.light, italic = true })
  set_hl("@type.builtin", { fg = colors.shades.color2.dark })
  set_hl("@variable.builtin", { fg = colors.color11 }) -- Variable names that are defined by the languages, like `this` or `self`.

  -- @tag               = { };    -- Tags like html tag names.
  -- @tagDelimiter      = { };    -- Tag delimiter like `<` `>` `/`

  -- Text
  -- [x] Complete
  -- [ ] Assigned
  set_hl("@text", { fg = colors.shades.foreground.dark })                      -- For strings considered text in a markup language.
  set_hl("@text.emphasis", { italic = true })                                  -- For text to be represented strong.
  set_hl("@text.strong", { bold = true })                                      -- For text to be represented with emphasis.
  set_hl("@text.underline", { underline = true })                              -- For text to be represented with an underline.
  set_hl("@text.strike", { strikethrough = true })                             -- For strikethrough text.
  set_hl("@text.title", { bold = true })                                       -- Text that is part of a title.
  set_hl("@text.literal", nil)                                                 -- Literal text.
  set_hl("@text.uri", { fg = colors.shades.color4.darkest, underline = true }) -- Any URI like a link or email.
  set_hl("@text.math", { fg = colors.color1 })                                 -- For latex math
  set_hl("@text.reference", { fg = colors.color8 })
  set_hl("@text.environment", { fg = colors.color6 })
  set_hl("@text.environment.name", { fg = colors.color6 })
  set_hl("@text.environment.name", { fg = colors.color6 })
  set_hl("@text.note", nil)
  set_hl("@text.warning", nil)
  set_hl("@text.danger", nil)
end

return M
