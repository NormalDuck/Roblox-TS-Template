local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'reflex', 'src').combineProducers
local c = a.import(script, game:GetService'ReplicatedStorage', 'TS', 'store').slices

local function createStore()
    local d = table.clone(c)

    setmetatable(d, nil)

    local e = b(d)

    return e
end

local d = createStore()

return {
    createStore = createStore,
    store = d,
}
