-- | Corresponds to the Screeps API [StructureRoad](http://support.screeps.com/hc/en-us/articles/207713089-StructureRoad)
module Screeps.Road where

import Screeps.Types (Road)
import Screeps.FFI (unsafeField)

ticksToDecay :: Road -> Int
ticksToDecay = unsafeField "ticksToDecay"
