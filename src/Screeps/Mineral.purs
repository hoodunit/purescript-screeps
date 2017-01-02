-- | Corresponds to the Screeps API [Mineral](http://support.screeps.com/hc/en-us/articles/207218579-Mineral)
module Screeps.Mineral where

import Data.Argonaut.Encode (class EncodeJson, encodeJson)
import Data.Argonaut.Decode (class DecodeJson, decodeJson)

import Screeps.FFI         (unsafeField, instanceOf)
import Screeps.Id
import Screeps.Regenerates (class Regenerates)
import Screeps.RoomObject  (class RoomObject)
import Screeps.Types       (ResourceType)

foreign import data Mineral :: *
instance objectMineral      :: RoomObject  Mineral
instance mineralRegenerates :: Regenerates Mineral
instance mineralHasId       :: HasId       Mineral
  where
    validate = instanceOf "Mineral"
instance encodeMineral       :: EncodeJson Mineral where encodeJson = encodeJsonWithId
instance decodeMineral       :: DecodeJson Mineral where decodeJson = decodeJsonWithId

mineralAmount :: Mineral -> Int
mineralAmount = unsafeField "mineralAmount"

mineralType :: Mineral -> ResourceType
mineralType = unsafeField "mineralType"

