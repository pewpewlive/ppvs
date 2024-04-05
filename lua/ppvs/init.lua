local ppvs = {}

function ppvs.setup() 
    local file_path = vim.api.nvim_get_runtime_file("/snippets/generated/pewpew-funcs.json", false)
    require("luasnip.loaders.from_vscode").lazy_load({ paths = { })   
end

return ppvs 
