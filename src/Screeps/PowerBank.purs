module Screeps.PowerBank where

import Screeps.Types
import Screeps.FFI (unsafeField)

power :: PowerBank -> Int
power = unsafeField "power"

ticksToDecay :: PowerBank -> Int
ticksToDecay = unsafeField "ticksToDecay"
