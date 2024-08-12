local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'react')

local function Button(c)
    local d = c.CornerRadius
    local e = c.Native
    local f = c.onClick
    local g = c.onMouseDown
    local h = c.onMouseEnter
    local i = c.onMouseLeave
    local j = c.onMouseUp
    local k = c.children
    local l = {
        Activated = function()
            local l = f

            if l ~= nil then
                l()
            end
        end,
        MouseButton1Down = function()
            local l = g

            if l ~= nil then
                l()
            end
        end,
        MouseButton1Up = function()
            local l = j

            if l ~= nil then
                l()
            end
        end,
        MouseEnter = function()
            local l = h

            if l ~= nil then
                l()
            end
        end,
        MouseLeave = function()
            local l = i

            if l ~= nil then
                l()
            end
        end,
    }
    local m = e

    if m ~= nil then
        m = m.Event
    end
    if m then
        for n, o in m do
            l[n] = o
        end
    end

    local n = l
    local o = {
        AnchorPoint = Vector2.new(0.5, 0.5),
        Event = n,
        Position = UDim2.new(0.5, 0, 0.5, 0),
        Text = '',
    }

    if e then
        for p, q in e do
            o[p] = q
        end
    end

    return b.createElement('textbutton', o, if d then b.createElement('uicorner', {CornerRadius = d})else nil, k)
end

return {default = Button}
