local cmp = require('cmp')
local config = cmp.get_config()

local ppvs = {}

function ppvs.setup()
    require("luasnip.loaders.from_vscode").lazy_load()
    table.insert(config.sources, {name = 'luasnip'})
    cmp.setup(config)
end

function ppvs.PPS()
    --[[for i = 1, #config.sources do
	print(config.sources[i].name)
    end]]
end

return ppvs 
