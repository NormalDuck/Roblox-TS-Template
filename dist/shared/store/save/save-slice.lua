local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'reflex', 'src').createProducer
local c = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'immut', 'src').produce
local d = {}
local e = b(d, {
    setPlayerSave = function(e, f, g)
        return c(e, function(h)
            local i = h
            local j = f
            local k = g

            i[j] = k
        end)
    end,
    deletePlayerSave = function(e, f)
        return c(e, function(g)
            local h = g
            local i = f

            h[i] = nil
        end)
    end,
    patchPlayerSave = function(e, f, g)
        return c(e, function(h)
            local i = h
            local j = f
            local k = h
            local l = f
            local m = table.clone((k[l]))

            setmetatable(m, nil)

            for n, o in g do
                m[n] = o
            end

            i[j] = m
        end)
    end,
})

return {saveSlice = e}
