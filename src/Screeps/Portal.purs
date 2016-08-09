-- | Corresponds to the Screeps API [StructurePortal](http://support.screeps.com/hc/en-us/articles/208647345-StructurePortal)
module Screeps.Portal where

import Screeps.Types
import Screeps.FFI (unsafeField)

destination :: Portal -> RoomPosition
destination = unsafeField "destination"

ticksToDecay :: Portal -> Int
ticksToDecay = unsafeField "ticksToDecay"
