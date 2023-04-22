# mbc-colorscheme

A colorscheme that makes use of your pywal colors via the [wal-colors](https://github.com/mbrea-c/wal-colors.nvim) lua API.
Supports treesitter highlights, LSP semantic highlight tokens, rainbow brackets
and a variety of other plugins (Issues/PRs welcome if your favourite plugin is
not supported!)

## Screenshots

Screenshots taken with different pywal themes.

### Catpuccin (frappe)

![init.lua](.screenshots/colorlua.jpg)

### Apprentice

![init.lua](.screenshots/apprentice.jpg)

### Rose Pine

![init.lua](.screenshots/rose_pine.jpg)

## Installation

The only important point is that `wal-colors.nvim` is installed **before** this
plugin. See below for how to do this in `lazy.nvim`.

### lazy.nvim

Add a `mbc-colorscheme.lua` file to your plugin spec directory containing the
following:

```lua
return {
  "mbrea-c/mbc-colorscheme.nvim",
  dependencies = {
    { "mbrea-c/wal-colors.nvim" },
  },
  config = function()
    vim.cmd([[colorscheme mbc]])
  end,
  priority = 1000,
}
```
