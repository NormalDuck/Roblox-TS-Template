local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'react')
local c = b
local d = b.forwardRef
local e = d(function(e, f)
    local g = e
    local h = g.CornerRadius
    local i = g.Image
    local j = g.Native
    local k = g.children
    local l = {
        ref = f,
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundTransparency = 1,
        Image = i,
        Position = UDim2.new(0.5, 0, 0.5, 0),
        Size = UDim2.new(1, 0, 1, 0),
    }

    if j then
        for m, n in j do
            l[m] = n
        end
    end

    return c.createElement('imagelabel', l, if h then c.createElement('uicorner', {CornerRadius = h})else nil, k)
end)
local f = e

return {default = f}
