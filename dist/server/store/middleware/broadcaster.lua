local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'reflex', 'src').createBroadcaster
local c = a.import(script, game:GetService'ServerScriptService', 'TS', 'network').Events
local d = a.import(script, game:GetService'ReplicatedStorage', 'TS', 'SerDes').HydrateSerDes
local e = a.import(script, game:GetService'ReplicatedStorage', 'TS', 'store').slices

b{
    producers = e,
    dispatch = function(f, g)
        c.store.dispatch:fire(f, g)
    end,
    hydrate = function(f, g)
        c.store.hydrate:fire(f, d.serialize(g))
    end,
    hydrateRate = 60,
}

return nil
