local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'react')
local c = b
local d = b.useEffect
local e = b.useState
local f = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'set-timeout', 'out').setTimeout

local function DelayRender(g)
    local h = g.MountDelay

    if h == nil then
        h = 0
    end

    local i = g.ShouldRender
    local j = g.UnmountDelay

    if j == nil then
        j = 0
    end

    local k = g.children
    local l, m = e(false)

    d(function()
        local n = if i then h else j

        return f(function()
            m(i)
        end, n)
    end, {h, i, j})

    return c.createElement(c.Fragment, nil, if l then k else nil)
end

return {DelayRender = DelayRender}
