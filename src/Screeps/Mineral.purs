-- | Corresponds to the Screeps API [Mineral](http://support.screeps.com/hc/en-us/articles/207218579-Mineral)
module Screeps.Mineral where

import Screeps.FFI         (unsafeField, instanceOf)
import Screeps.Id          (class HasId)
import Screeps.Regenerates (class Regenerates)
import Screeps.Types       (ResourceType, class RoomObject)

foreign import data Mineral :: *
instance objectMineral      :: RoomObject  Mineral
instance mineralRegenerates :: Regenerates Mineral
instance mineralHasId       :: HasId       Mineral
  where
    validate = instanceOf "Mineral"

mineralAmount :: Mineral -> Int
mineralAmount = unsafeField "mineralAmount"

mineralType :: Mineral -> ResourceType
mineralType = unsafeField "mineralType"

