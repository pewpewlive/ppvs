# PewPew (Neo)Vim Snippets

PewpewSnippets for neovim!

Gets the snippets from [PewPewSnippets](https://github.com/pewpewlive/PewPewSnippets), converts them into snippets vim can understand and adds them into the autocompletion!

## Installation

**!!! BEFORE YOU GO ANY FURTHER !!!**

For the plugin to work, you need to have nvim-cmp. You probably already have this set in your plugins list if you have downloaded any sort of lsp plugin, but it is also important that you add the following in your nvim-cmp plugin:

```lua
{
'hrsh7th/nvim-cmp',
config = function ()
    require'cmp'.setup {
    snippet = {
    expand = function(args)
        require'luasnip'.lsp_expand(args.body) -- dont worry about luasnip, as it is a dependency and will be downloaded even if you dont have it
        -- other
    end
    },

    sources = {
    {name = 'luasnip'}
    -- other
    },
}
```

(This assumes you're using lazy.nvim, but you can probably convert this to the equivalent code for the package manager you use)

This way the custom snippets actually appear.

### With Lazy.nvim

```lua
{
    name = "pewpewlive/ppvs",
    dependencies = { "pewpewlive/PewPewSnippets", "L3MON4D3/LuaSnip", "hrsh7th/nvim-cmp", "saadparwaiz1/cmp_luasnip" }
}
```

### With Packer

```lua
use{
    name = 'pewpewlive/ppvs',
    requires = { {'pewpewlive/PewPewSnippets'}, {'L3MON4D3/LuaSnip'}, {'hrsh7th/nvim-cmp'}, {'saadparwaiz1/cmp_luasnip'} }
}
```

### With Vim-Plug

```vim
" deps
Plug 'pewpewlive/PewPewSnippets'
Plug 'L3MON4D3/LuaSnip'
Plug 'hrsh7th/nvim-cmp'
Plug 'saadparwaiz1/cmp_luasnip'
" plugin
Plug 'pewpewlive/ppvs'
```

### Configuration

```lua
require'ppvs'.setup()
```
