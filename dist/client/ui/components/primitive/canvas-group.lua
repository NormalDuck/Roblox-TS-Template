local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'react')
local c = b
local d = b.forwardRef
local e = d(function(e, f)
    local g = e
    local h = g.CornerRadius
    local i = g.Native
    local j = g.children
    local k = {
        ref = f,
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Position = UDim2.new(0.5, 0, 0.5, 0),
    }

    if i then
        for l, m in i do
            k[l] = m
        end
    end

    return c.createElement('canvasgroup', k, if h then c.createElement('uicorner', {
        key = 'corner',
        CornerRadius = h,
    })else nil, j)
end)
local f = e

return {default = f}
