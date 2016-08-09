module Screeps.Source where

import Screeps.Types
import Screeps.FFI (unsafeField)

energy :: Source -> Int
energy = unsafeField "energy"

energyCapacity :: Source -> Int
energyCapacity = unsafeField "energyCapacity"

id :: Source -> Id Source
id = unsafeField "id"

ticksToRegeneration :: Source -> Int
ticksToRegeneration = unsafeField "ticksToRegeneration"
