local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@flamework', 'core', 'out').Flamework

b._addPaths{
    {
        'ServerScriptService',
        'TS',
        'components',
    },
}
b._addPaths{
    {
        'ServerScriptService',
        'TS',
        'services',
    },
}
b._addPaths{
    {
        'ReplicatedStorage',
        'TS',
        'components',
    },
}
b._addPaths{
    {
        'ServerScriptService',
        'TS',
        'hooks',
    },
}
b.ignite()
