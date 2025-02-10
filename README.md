# Lua `lua.log()` vs JavaScript `console.log()`

## The Problem in Lua
```lua
local data = { name = "Lua", version = 5.4 }
print(data)  -- Output: table: 0x12345678 (Not readable)
```

## Solution: `lua.log()`
```lua
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
                tableContents = tableContents .. tostring(key) .. "= " .. tostring(value) .. " "
            end
            tableContents = tableContents .. "}"
            result = result .. tableContents .. " "
        end
    end

    print(result:sub(1, -2))
end

lua.log(42, "Hello", true, { name = "Lua" })
```
### Output:
```
42 Hello true { name= Lua }
```

## JavaScript `console.log()`
```js
console.log(42, "Hello", true, { name: "JavaScript" });
```
### Output:
```
42 Hello true { name: 'JavaScript' }
```

## Idea
`lua.log()` is inspired by `console.log()`. It works the same way in Lua.
