local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@flamework', 'core', 'out').Reflect
local c = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@flamework', 'core', 'out')
local d = c.Modding
local e = c.Service
local f = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'services').Players
local g

do
    g = setmetatable({}, {
        __tostring = function()
            return 'PlayerSpawnService'
        end,
    })
    g.__index = g

    function g.new(...)
        local h = setmetatable({}, g)

        return h:constructor(...) or h
    end
    function g.constructor(h)
        h.JoinListeners = {}
        h.LeaveListeners = {}
    end
    function g.onStart(h)
        d.onListenerAdded(function(i)
            local j = h.JoinListeners
            local k = i

            j[k] = true

            return j
        end, 'server/hooks/init@OnPlayerJoin')
        d.onListenerRemoved(function(i)
            local j = h.JoinListeners
            local k = i

            j[k] = true

            return j
        end, 'server/hooks/init@OnPlayerJoin')
        d.onListenerAdded(function(i)
            local j = h.LeaveListeners
            local k = i

            j[k] = true

            return j
        end, 'server/hooks/init@OnPlayerLeave')
        d.onListenerRemoved(function(i)
            local j = h.LeaveListeners
            local k = i

            j[k] = true

            return j
        end, 'server/hooks/init@OnPlayerLeave')

        for i, j in f:GetPlayers()do
            for k in h.JoinListeners do
                task.spawn(function()
                    return k:onPlayerJoin(j)
                end)
            end
        end

        f.PlayerAdded:Connect(function(k)
            for l in h.JoinListeners do
                task.spawn(function()
                    return l:onPlayerJoin(k)
                end)
            end
        end)
        f.PlayerRemoving:Connect(function(k)
            for l in h.LeaveListeners do
                task.spawn(function()
                    return l:onPlayerLeave(k)
                end)
            end
        end)
    end

    do
        b.defineMetadata(g, 'identifier', 'server/hooks/players@PlayerSpawnService')
        b.defineMetadata(g, 'flamework:implements', {
            '$:flamework@OnStart',
        })
    end
end

b.decorate(g, '$:flamework@Service', e, {
    {loadOrder = 1},
})

return {PlayerSpawnService = g}
