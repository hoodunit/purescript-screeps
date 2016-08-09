-- | Corresponds to the Screeps API [StructureExtension](http://support.screeps.com/hc/en-us/articles/207711949-StructureExtension)
module Screeps.Extension where

import Screeps.Types
import Screeps.FFI (unsafeField)

energy :: Extension -> Int
energy = unsafeField "energy"

energyCapacity :: Extension -> Int
energyCapacity = unsafeField "energyCapacity"
