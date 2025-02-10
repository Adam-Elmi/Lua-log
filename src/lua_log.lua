local lua = {}

function lua.log(...)
    local result = ""
    local args = { ... }

    for _, v in ipairs(args) do
        if type(v) == "string" or type(v) == "number" or type(v) == "boolean" then
            result = result .. tostring(v) .. " "
        elseif type(v) == "table" then
            local tableContents = "{ "
            for key, value in pairs(v) do
                tableContents = tableContents .. tostring(key) .. ": " .. tostring(value) .. " "
            end
            tableContents = tableContents .. "}"
            result = result .. tableContents .. " "
        end
    end

    print(result:sub(1, -2))
end

return lua
