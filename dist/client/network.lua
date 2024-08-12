local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'rbxts_include', 'node_modules', '@rbxts', 't', 'lib', 'ts').t
local c = a.import(script, game:GetService'ReplicatedStorage', 'TS', 'network')
local d = c.GlobalEvents
local e = c.GlobalFunctions
local f = d:createClient({}, {
    incomingIds = {},
    incoming = {},
    incomingUnreliable = {},
    outgoingIds = {},
    outgoingUnreliable = {},
    namespaceIds = {
        'store',
    },
    namespaces = {
        store = {
            incomingIds = {
                'dispatch',
                'hydrate',
            },
            incoming = {
                dispatch = {
                    {
                        b.array(b.interface{
                            name = b.string,
                            arguments = b.array(b.union(b.any, b.none)),
                        }),
                    },
                    nil,
                },
                hydrate = {
                    {
                        b.interface{
                            buffer = b.typeof'buffer',
                            blobs = b.array(b.any),
                        },
                    },
                    nil,
                },
            },
            incomingUnreliable = {},
            outgoingIds = {},
            outgoingUnreliable = {},
            namespaceIds = {},
            namespaces = {},
        },
    },
})
local g = e:createClient({}, {
    incomingIds = {},
    incoming = {},
    outgoingIds = {},
    outgoing = {},
    namespaceIds = {},
    namespaces = {},
})

return {
    Events = f,
    Functions = g,
}
