local function mapProperties(a, b)
    local c = {}

    for d, e in a do
        c[d] = b(e, d)
    end

    return c
end
local function mapProperty(a, b, c)
    if a[b] ~= nil then
        local d = table.clone(a)

        d[b] = c(a[b])

        return d
    end

    return a
end
local function fillArray(a, b)
    local c = table.create(a, 0)
    local d = table.create(#c)
    local e = function(e, f)
        return b(f)
    end

    for f, g in c do
        d[f] = e(g, f - 1, c)
    end

    return d
end
local function assign(a, b)
    local c = table.clone(a)

    for d, e in b do
        c[d] = e
    end

    return c
end
local function shuffle(a)
    local b = table.clone(a)
    local c = Random.new()

    for d = #b - 1, 1, -1 do
        local e = c:NextInteger(0, d)
        local f = b[d + 1]

        b[d + 1] = b[e + 1]
        b[e + 1] = f
    end

    return b
end
local function countProperties(a)
    local b = 0

    for c, d in pairs(a)do
        b += 1
    end

    return b
end

return {
    mapProperties = mapProperties,
    mapProperty = mapProperty,
    fillArray = fillArray,
    assign = assign,
    shuffle = shuffle,
    countProperties = countProperties,
}
