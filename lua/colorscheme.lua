local colorscheme = "onehalfdark" -- swith by change theme name
local transparent = true -- background transparent

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if (not status_ok) then
    return
end

if transparent then
    local bg_transparent, _ = pcall(vim.cmd, "hi Normal guibg=NONE ctermbg=NONE")
    if (not bg_transparent) then
        return
    end
end
