--- === hs._asm.undocumented.coredock ===
---
--- This module provides access to CoreDock related features.  This allows you to adjust the Dock's position, pinning, hiding, magnification and animation settings.
---
--- This module utilizes undocumented or unpublished functions to manipulate options and features within OS X.  These are from "private" api's for Mac OS X and are not guaranteed to work with any particular version of OS X or at all.This code was based primarily on code samples and segments found at (https://code.google.com/p/undocumented-goodness/) and (https://code.google.com/p/iterm2/source/browse/branches/0.10.x/CGSInternal/CGSDebug.h?r=2).
---
--- I make no promises that these will work for you or work at all with any, past, current, or future versions of OS X.  I can confirm only that they didn't crash my machine during testing under 10.10. You have been warned.
---
--- Note that the top orientation and dock pinning has not been supported even within the private APIs for some time and may disappear from here in a future release unless another solution can be found.  It is provided here for testing and to encourage suggestions if someone is aware of a solution that has not yet been tried.

local module = require("hs._asm.undocumented.coredock.internal")

-- private variables and methods -----------------------------------------

local _kMetaTable = {}
_kMetaTable._k = {}
_kMetaTable.__index = function(obj, key)
        if _kMetaTable._k[obj] then
            if _kMetaTable._k[obj][key] then
                return _kMetaTable._k[obj][key]
            else
                for k,v in pairs(_kMetaTable._k[obj]) do
                    if v == key then return k end
                end
            end
        end
        return nil
    end
_kMetaTable.__newindex = function(obj, key, value)
        error("attempt to modify a table of constants",2)
        return nil
    end
_kMetaTable.__pairs = function(obj) return pairs(_kMetaTable._k[obj]) end
_kMetaTable.__tostring = function(obj)
        local result = ""
        if _kMetaTable._k[obj] then
            local width = 0
            for k,v in pairs(_kMetaTable._k[obj]) do width = width < #k and #k or width end
            for k,v in require("hs.fnutils").sortByKeys(_kMetaTable._k[obj]) do
                result = result..string.format("%-"..tostring(width).."s %s\n", k, tostring(v))
            end
        else
            result = "constants table missing"
        end
        return result
    end
_kMetaTable.__metatable = _kMetaTable -- go ahead and look, but don't unset this

local _makeConstantsTable = function(theTable)
    local results = setmetatable({}, _kMetaTable)
    _kMetaTable._k[results] = theTable
    return results
end

-- Public interface ------------------------------------------------------

module.options.orientation = _makeConstantsTable(module.options.orientation)
module.options.pinning     = _makeConstantsTable(module.options.pinning)
module.options.effect      = _makeConstantsTable(module.options.effect)
module.options             = setmetatable(module.options, {
    __tostring = function(_)
        local result = ""
        for i,v in require("hs.fnutils").sortByKeys(_) do
            result = result..i.."\n"
        end
        return result
    end,
    __newindex = function(obj, key, value)
        error("attempt to modify a table of constants",2)
        return nil
    end
})

--- hs._asm.undocumented.coredock.restartDock()
--- Function
--- This function restarts the user's Dock instance.  This is not required for any of the functionality of this module, but does come in handy if your dock gets "misplaced" when you change monitor resolution or detach an external monitor (I've seen this occasionally when the Dock is on the left or right.)
function module.restartDock()
    os.execute("/usr/bin/killall Dock")
end

-- Return Module Object --------------------------------------------------

return module
