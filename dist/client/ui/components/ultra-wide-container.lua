local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'pretty-react-hooks', 'out').useViewport
local c = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'react')
local d = a.import(script, script.Parent, 'primitive', 'group').default
local e = 2.111111111111111
local f = Vector2.new(1920, 1020)

local function UltraWideContainer(g)
    local h = g.children
    local i = b()

    return c.createElement(d, nil, c.createElement('uisizeconstraint', {
        MaxSize = i:map(function(j)
            local k = Vector2.new(math.min(j.X, j.Y * e), j.Y)
            local l = k.Magnitude / f.Magnitude
            local m = k.X > k.Y or l >= 1

            if not m then
                return Vector2.new(1920, 1080)
            end

            return Vector2.new(1920 * l, j.Y)
        end),
    }), h)
end

return {default = UltraWideContainer}
