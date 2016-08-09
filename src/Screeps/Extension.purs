module Screeps.Extension where

import Screeps.Types
import Screeps.FFI (unsafeField)

energy :: Extension -> Int
energy = unsafeField "energy"

energyCapacity :: Extension -> Int
energyCapacity = unsafeField "energyCapacity"
