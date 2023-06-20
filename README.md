# mbc-wal

A colorscheme that makes use of your pywal colors via the [wal-colors](wal-colors.md) lua API.
Supports treesitter highlights, LSP semantic highlight tokens, rainbow brackets
and a variety of other plugins (Issues/PRs welcome if your favourite plugin is
not supported!)

##Screenshots taken with different pywal themes.

### Catpuccin (frappe)

![init.lua](.screenshots/colorlua.jpg)

### Apprentice

![init.lua](.screenshots/apprentice.jpg)

### Rose Pine

![init.lua](.screenshots/rose_pine.jpg)

## Installation

### lazy.nvim

Add a `mbc-wal.lua` file to your plugin spec directory containing the
following:

```lua
return {
  "sonjiku/mbc-wall.nvim"
}
```
