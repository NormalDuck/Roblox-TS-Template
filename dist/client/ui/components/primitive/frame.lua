local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'react')
local c = b
local d = b.forwardRef
local e = d(function(e, f)
    local g = e.CornerRadius
    local h = e.Native
    local i = e.children
    local j = {
        ref = f,
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        Size = UDim2.new(1, 0, 1, 0),
    }

    if h then
        for k, l in h do
            j[k] = l
        end
    end

    return c.createElement('frame', j, i, if g then c.createElement('uicorner', {CornerRadius = g})else nil)
end)
local f = e

return {default = f}
