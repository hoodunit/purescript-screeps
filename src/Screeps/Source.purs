-- | Corresponds to the Screeps API [Source](http://support.screeps.com/hc/en-us/articles/203079211-Source)
module Screeps.Source where

import Data.Argonaut.Encode (class EncodeJson, encodeJson)
import Data.Argonaut.Decode (class DecodeJson, decodeJson)

import Screeps.FFI (unsafeField, instanceOf)
import Screeps.Id
import Screeps.Regenerates (class Regenerates)
import Screeps.RoomObject (class RoomObject)
import Screeps.Types --(Id, Sourcve)

foreign import data Source :: *
instance objectSource      :: RoomObject  Source
instance sourceHasId       :: HasId       Source
  where
    validate = instanceOf "Source"
instance encodeSource      :: EncodeJson Source where encodeJson = encodeJsonWithId
instance decodeSource      :: DecodeJson Source where decodeJson = decodeJsonWithId
instance sourceRegenerates :: Regenerates Source

energy :: Source -> Int
energy = unsafeField "energy"

energyCapacity :: Source -> Int
energyCapacity = unsafeField "energyCapacity"

