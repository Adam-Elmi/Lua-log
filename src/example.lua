local lua = require("src.lua_log")
-- Example usage of lua.log()
lua.log(23 + 23, 2, 4 - 2, "Adam", true, false, { name = "Lua", version = 5.4 })
lua.log("Hello", 42, { key = "value", num = 100 }, false)
lua.log({
    username = {
        name = "Yuhan"
    }
})
