local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = {}

for c, d in a.import(script, game:GetService'ReplicatedStorage', 'TS', 'store', 'save', 'save-slice') or {}do
    b[c] = d
end

return b
