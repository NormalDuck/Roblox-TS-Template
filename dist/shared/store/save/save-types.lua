local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 't', 'lib', 'ts').t
local c = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@flamework', 'core', 'out').Flamework
local d = {
    eee = 123,
    aaa = 'Hello, World!',
}
local e = c.createGuard(b.interface{
    eee = b.number,
    aaa = b.string,
})

return {
    DefaultPlayerSave = d,
    PlayerSaveGuard = e,
}
