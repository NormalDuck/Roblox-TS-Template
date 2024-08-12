local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@flamework', 'core', 'out').Flamework

b._addPaths{
    {
        'StarterPlayer',
        'StarterPlayerScripts',
        'TS',
        'components',
    },
}
b._addPaths{
    {
        'StarterPlayer',
        'StarterPlayerScripts',
        'TS',
        'controllers',
    },
}
b._addPaths{
    {
        'ReplicatedStorage',
        'TS',
        'components',
    },
}
b.ignite()
