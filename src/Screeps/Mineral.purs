-- | Corresponds to the Screeps API [Mineral](http://support.screeps.com/hc/en-us/articles/207218579-Mineral)
module Screeps.Mineral where

import Data.Argonaut.Encode (class EncodeJson, encodeJson)
import Data.Argonaut.Decode (class DecodeJson, decodeJson)
import Data.Monoid          ((<>))
import Data.Show            (class Show,       show)

import Screeps.FFI         (unsafeField, instanceOf)
import Screeps.Id
import Screeps.Regenerates (class Regenerates)
import Screeps.RoomObject  (class RoomObject)
import Screeps.Resource    (ResourceType)

foreign import data Mineral :: *
instance objectMineral      :: RoomObject  Mineral
instance mineralRegenerates :: Regenerates Mineral
instance mineralHasId       :: HasId       Mineral
  where
    validate = instanceOf "Mineral"
instance encodeMineral       :: EncodeJson Mineral where encodeJson = encodeJsonWithId
instance decodeMineral       :: DecodeJson Mineral where decodeJson = decodeJsonWithId
instance showMineral         :: Show       Mineral where
  show m = show (mineralAmount m) <> " " <> show (mineralType m)

mineralAmount :: Mineral -> Int
mineralAmount = unsafeField "mineralAmount"

mineralType :: Mineral -> ResourceType
mineralType = unsafeField "mineralType"

foreign import resource_hydrogen :: ResourceType
foreign import resource_oxygen :: ResourceType
foreign import resource_utrium :: ResourceType
foreign import resource_lemergium :: ResourceType
foreign import resource_keanium :: ResourceType
foreign import resource_zynthium :: ResourceType
foreign import resource_catalyst :: ResourceType
foreign import resource_ghodium :: ResourceType

foreign import resource_hydroxide :: ResourceType
foreign import resource_zynthium_keanite :: ResourceType
foreign import resource_utrium_lemergite :: ResourceType

foreign import resource_utrium_hydride :: ResourceType
foreign import resource_utrium_oxide :: ResourceType
foreign import resource_keanium_hydride :: ResourceType
foreign import resource_keanium_oxide :: ResourceType
foreign import resource_lemergium_hydride :: ResourceType
foreign import resource_lemergium_oxide :: ResourceType
foreign import resource_zynthium_hydride :: ResourceType
foreign import resource_zynthium_oxide :: ResourceType
foreign import resource_ghodium_hydride :: ResourceType
foreign import resource_ghodium_oxide :: ResourceType

foreign import resource_utrium_acid :: ResourceType
foreign import resource_utrium_alkalide :: ResourceType
foreign import resource_keanium_acid :: ResourceType
foreign import resource_keanium_alkalide :: ResourceType
foreign import resource_lemergium_acid :: ResourceType
foreign import resource_lemergium_alkalide :: ResourceType
foreign import resource_zynthium_acid :: ResourceType
foreign import resource_zynthium_alkalide :: ResourceType
foreign import resource_ghodium_acid :: ResourceType
foreign import resource_ghodium_alkalide :: ResourceType

foreign import resource_catalyzed_utrium_acid :: ResourceType
foreign import resource_catalyzed_utrium_alkalide :: ResourceType
foreign import resource_catalyzed_keanium_acid :: ResourceType
foreign import resource_catalyzed_keanium_alkalide :: ResourceType
foreign import resource_catalyzed_lemergium_acid :: ResourceType
foreign import resource_catalyzed_lemergium_alkalide :: ResourceType
foreign import resource_catalyzed_zynthium_acid :: ResourceType
foreign import resource_catalyzed_zynthium_alkalide :: ResourceType
foreign import resource_catalyzed_ghodium_acid :: ResourceType
foreign import resource_catalyzed_ghodium_alkalide :: ResourceType

