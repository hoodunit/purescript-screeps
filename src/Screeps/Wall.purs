-- | Corresponds to the Screeps API [StructureWall](http://support.screeps.com/hc/en-us/articles/208437125-StructureWall)
module Screeps.Wall where

import Screeps.Types
import Screeps.FFI (unsafeField)

ticksToLive :: Wall -> Int
ticksToLive = unsafeField "ticksToLive"
