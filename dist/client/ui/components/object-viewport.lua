local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'make')
local c = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'pretty-react-hooks', 'out').useMountEffect
local d = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'react')
local e = d
local f = d.useRef

local function setDefaultCameraView(g, h, i)
    if i == nil then
        i = 0
    end

    local j = h:GetBoundingBox()
    local k = h:GetExtentsSize().Magnitude / 2
    local l = math.rad(g.FieldOfView) / 2
    local m = k / math.tan(l) + i
    local n = g.CFrame
    local o = g.CFrame.Position
    local p = j.Position
    local q = g.CFrame.Position
    local r = j.Position
    local s = (q - r).Unit * m

    g.CFrame = n - o + p + s
end
local function ObjectViewport(g)
    local h = g.ExtraCameraDepth
    local i = g.Native
    local j = g.Object
    local k = g.children
    local l = f()

    c(function()
        local m = l.current
        local n = m ~= nil
        local o = j

        if not o:IsA'Model' then
            o = b('Model', {
                Children = {j},
                PrimaryPart = j,
            })
        end

        o.Parent = m

        local p = Instance.new'Camera'

        m.CurrentCamera = p

        setDefaultCameraView(p, o, h)

        p.Parent = m
    end)

    local m = {ref = l}

    for n, o in i do
        m[n] = o
    end

    return e.createElement('viewportframe', m, k)
end

return {default = ObjectViewport}
