local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@flamework', 'core', 'out').Reflect
local c = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@flamework', 'core', 'out')
local d = c.Modding
local e = c.Service
local f

do
    f = setmetatable({}, {
        __tostring = function()
            return 'CharacterAddService'
        end,
    })
    f.__index = f

    function f.new(...)
        local g = setmetatable({}, f)

        return g:constructor(...) or g
    end
    function f.constructor(g)
        g.AddListener = {}
        g.RemoveListener = {}
    end
    function f.onStart(g)
        d.onListenerAdded(function(h)
            local i = g.AddListener
            local j = h

            i[j] = true

            return i
        end, 'server/hooks/init@OnCharacterAdd')
        d.onListenerRemoved(function(h)
            local i = g.AddListener
            local j = h
            local k = i[j] ~= nil

            i[j] = nil

            return k
        end, 'server/hooks/init@OnCharacterAdd')
        d.onListenerAdded(function(h)
            local i = g.RemoveListener
            local j = h

            i[j] = true

            return i
        end, 'server/hooks/init@OnCharacterRemove')
        d.onListenerRemoved(function(h)
            local i = g.RemoveListener
            local j = h
            local k = i[j] ~= nil

            i[j] = nil

            return k
        end, 'server/hooks/init@OnCharacterRemove')
    end
    function f.onPlayerJoin(g, h)
        h.CharacterAdded:Connect(function(i)
            return g:characterAdded(i)
        end)
        h.CharacterRemoving:Connect(function(i)
            for j in g.RemoveListener do
                j:onCharacterRemove(i)
            end
        end)

        if h.Character ~= nil then
            g:characterAdded(h.Character)
        end
    end

    f.characterAdded = a.async(function(g, h)
        for i in g.AddListener do
            task.spawn(function()
                return i:onCharacterAdd(h)
            end)
        end
    end)

    do
        b.defineMetadata(f, 'identifier', 'server/hooks/character@CharacterAddService')
        b.defineMetadata(f, 'flamework:implements', {
            '$:flamework@OnStart',
            'server/hooks/init@OnPlayerJoin',
        })
    end
end

b.decorate(f, '$:flamework@Service', e, {
    {loadOrder = 0},
})

return {default = f}
