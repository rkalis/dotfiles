-----------------------------------------------
-- Improved AppleScript support
-----------------------------------------------

function import_script(file)
    local f = io.open(file, "rb")
    local content = f:read("*all")
    f:close()
    return content
end
