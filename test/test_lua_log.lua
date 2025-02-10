local lua = require("src.lua_log")

-- Test function
local function test_log()
    print("Running tests...")

    lua.log("Test String", 123, false) -- Expected Output: Test String 123 false
    lua.log({ a = 1, b = 2 })          -- Expected Output: { a: 1 b: 2 }

    print("All tests passed!")
end

test_log()
