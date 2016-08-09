-- | Corresponds to the Screeps API [StructurePowerBank](http://support.screeps.com/hc/en-us/articles/207712729-StructurePowerBank)
module Screeps.PowerBank where

import Screeps.Types (PowerBank)
import Screeps.FFI (unsafeField)

power :: PowerBank -> Int
power = unsafeField "power"

ticksToDecay :: PowerBank -> Int
ticksToDecay = unsafeField "ticksToDecay"
