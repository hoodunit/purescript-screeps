-- | Corresponds to the Screeps API [Mineral](http://support.screeps.com/hc/en-us/articles/207218579-Mineral)
module Screeps.Mineral where

import Screeps.Regenerates (class Regenerates)
import Screeps.Types       (Id, ResourceType, class RoomObject)
import Screeps.FFI         (unsafeField)

foreign import data Mineral :: *
instance objectMineral      :: RoomObject  Mineral
instance mineralRegenerates :: Regenerates Mineral

mineralAmount :: Mineral -> Int
mineralAmount = unsafeField "mineralAmount"

mineralType :: Mineral -> ResourceType
mineralType = unsafeField "mineralType"

id :: Mineral -> Id Mineral
id = unsafeField "id"

