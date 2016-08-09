-- | Corresponds to the Screeps API [Mineral](http://support.screeps.com/hc/en-us/articles/207218579-Mineral)
module Screeps.Mineral where

import Screeps.Types (Id, Mineral, ResourceType)
import Screeps.FFI (unsafeField)

mineralAmount :: Mineral -> Int
mineralAmount = unsafeField "mineralAmount"

mineralType :: Mineral -> ResourceType
mineralType = unsafeField "mineralType"

id :: Mineral -> Id Mineral
id = unsafeField "id"

ticksToRegeneration :: Mineral -> Int
ticksToRegeneration = unsafeField "ticksToRegeneration"
