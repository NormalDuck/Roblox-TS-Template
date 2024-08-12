local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'services').RunService
local c = 'Template for roblox-ts'
local d = b:IsStudio() and not b:IsRunning()

return {
    GAME_NAME = c,
    IS_EDIT = d,
}
