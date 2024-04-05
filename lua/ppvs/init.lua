local ppvs = {}

function ppvs.setup() 
    local pewpew_funcs = vim.api.nvim_get_runtime_file("/snippets/generated/pewpew-funcs.json", false)[1]
    local pewpew_enums = vim.api.nvim_get_runtime_file("/snippets/generated/pewpew-enums.json", false)[1]
    local fmath_funcs = vim.api.nvim_get_runtime_file("/snippets/generated/fmath-funcs.json", false)[1]
    require("luasnip.loaders.from_vscode").lazy_load({ paths = { pewpew_funcs, pewpew_enums, fmath_funcs }})
end

return ppvs 
