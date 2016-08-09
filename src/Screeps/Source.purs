-- | Corresponds to the Screeps API [Source](http://support.screeps.com/hc/en-us/articles/203079211-Source)
module Screeps.Source where

import Screeps.Constants (Id)
import Screeps.Types (Source)
import Screeps.FFI (unsafeField)

energy :: Source -> Int
energy = unsafeField "energy"

energyCapacity :: Source -> Int
energyCapacity = unsafeField "energyCapacity"

id :: Source -> Id Source
id = unsafeField "id"

ticksToRegeneration :: Source -> Int
ticksToRegeneration = unsafeField "ticksToRegeneration"
