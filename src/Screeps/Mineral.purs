module Screeps.Mineral where

import Screeps.Types (Mineral, Id, ResourceType)
import Screeps.FFI (unsafeField)

mineralAmount :: Mineral -> Int
mineralAmount = unsafeField "mineralAmount"

mineralType :: Mineral -> ResourceType
mineralType = unsafeField "mineralType"

id :: Mineral -> Id Mineral
id = unsafeField "id"

ticksToRegeneration :: Mineral -> Int
ticksToRegeneration = unsafeField "ticksToRegeneration"
