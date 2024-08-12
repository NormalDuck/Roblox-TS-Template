local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'react')
local c = b
local d = b.forwardRef
local e = d(function(e, f)
    local g = e.Native
    local h = e.children
    local i = {
        ref = f,
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundTransparency = 1,
        Position = UDim2.new(0.5, 0, 0.5, 0),
        Size = UDim2.new(1, 0, 1, 0),
    }

    if g then
        for j, k in g do
            i[j] = k
        end
    end

    return c.createElement('frame', i, h)
end)
local f = e

return {default = f}
