local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'react')
local c = a.import(script, game:GetService'ReplicatedStorage', 'TS', 'constants').IS_EDIT
local d = a.import(script, script.Parent.Parent, 'ultra-wide-container').default
local e = a.import(script, script.Parent, 'group').default

local function Layer(f)
    local g = f.ClampUltraWide

    if g == nil then
        g = true
    end

    local h = f.DisplayOrder
    local i = f.children

    return if c then(b.createElement(e, {
        Native = {ZIndex = h},
    }, if g then b.createElement(d, nil, i)else i))else(b.createElement('screengui', {
        DisplayOrder = h,
        IgnoreGuiInset = true,
        ResetOnSpawn = false,
        ZIndexBehavior = 'Sibling',
    }, if g then b.createElement(d, nil, i)else i))
end

return {default = Layer}
