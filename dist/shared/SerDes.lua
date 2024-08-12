local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 'flamework-binary-serializer', 'out').createBinarySerializer
local c = b{
    'object_raw',
    {
        {
            'eee',
            {
                'f64',
            },
        },
        {
            'aaa',
            {
                'string',
            },
        },
    },
}
local d = b{
    'object_raw',
    {
        {
            'saves',
            {
                'map',
                {
                    'blob',
                },
                {
                    'object_raw',
                    {
                        {
                            'eee',
                            {
                                'f64',
                            },
                        },
                        {
                            'aaa',
                            {
                                'string',
                            },
                        },
                    },
                },
            },
        },
    },
}

return {
    PlayerSerDes = c,
    HydrateSerDes = d,
}
