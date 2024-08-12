local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'TS', 'store', 'save').saveSlice
local c = {saves = b}

return {slices = c}
