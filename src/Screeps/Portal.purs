module Screeps.Portal where

import Screeps.Types
import Screeps.FFI (unsafeField)

destination :: Portal -> RoomPosition
destination = unsafeField "destination"

ticksToDecay :: Portal -> Int
ticksToDecay = unsafeField "ticksToDecay"
