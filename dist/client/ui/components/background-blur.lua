local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'pretty-react-hooks', 'out')
local c = b.useBindingListener
local d = b.useCamera
local e = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'react')
local f = e
local g = e.useState
local h = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'react-roblox').createPortal

local function BackgroundBlur(i)
    local j = i.BlurSize
    local k = d()
    local l, m = g(false)

    c(j, function(n)
        if n == nil then
            n = 0
        end

        m(n > 0)
    end)

    return h(f.createElement(f.Fragment, nil, if l then f.createElement('blureffect', {Size = j})else nil), k)
end

return {BackgroundBlur = BackgroundBlur}
