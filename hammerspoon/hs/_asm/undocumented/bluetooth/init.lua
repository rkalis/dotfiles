--- === hs._asm.undocumented.bluetooth ===
---
--- This submodule provides access to Bluetooth availability and its power state, and the ability to change it.
---
--- This module utilizes undocumented or unpublished functions to manipulate options and features within OS X.  These are from "private" api's for Mac OS X and are not guaranteed to work with any particular version of OS X or at all.  This code was based primarily on code samples and segments found at https://github.com/toy/blueutil.
---
---I make no promises that these will work for you or work at all with any, past, current, or future versions of OS X.  I can confirm only that they didn't crash my machine during testing under 10.10. You have been warned.


local module = require("hs._asm.undocumented.bluetooth.internal")

-- private variables and methods -----------------------------------------

-- Public interface ------------------------------------------------------

-- Return Module Object --------------------------------------------------

return module
