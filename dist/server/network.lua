local a = require(game:GetService'ReplicatedStorage':WaitForChild'rbxts_include':WaitForChild'RuntimeLib')
local b = a.import(script, game:GetService'ReplicatedStorage', 'TS', 'network')
local c = b.GlobalEvents
local d = b.GlobalFunctions
local e = c:createServer({}, {
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
            incomingIds = {},
            incoming = {},
            incomingUnreliable = {},
            outgoingIds = {
                'dispatch',
                'hydrate',
            },
            outgoingUnreliable = {},
            namespaceIds = {},
            namespaces = {},
        },
    },
})
local f = d:createServer({}, {
    incomingIds = {},
    incoming = {},
    outgoingIds = {},
    outgoing = {},
    namespaceIds = {},
    namespaces = {},
})

return {
    Events = e,
    Functions = f,
}
