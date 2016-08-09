module Screeps.Road where

import Screeps.Types
import Screeps.FFI (unsafeField)

ticksToDecay :: Road -> Int
ticksToDecay = unsafeField "ticksToDecay"
