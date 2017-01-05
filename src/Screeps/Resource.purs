-- | Corresponds to the Screeps API [Resource](http://support.screeps.com/hc/en-us/articles/203016362-Resource)
module Screeps.Resource where

import Data.Argonaut.Encode (class EncodeJson, encodeJson)
import Data.Argonaut.Decode (class DecodeJson, decodeJson)
import Data.Monoid          ((<>))
import Data.Show            (class Show,       show)

import Screeps.FFI (unsafeField, instanceOf)
import Screeps.Id (class HasId, encodeJsonWithId, decodeJsonWithId)
import Screeps.RoomObject (class RoomObject)
import Screeps.Types      (ResourceType)

foreign import data Resource :: *
instance objectResource      :: RoomObject Resource
instance resourceHasId       :: HasId      Resource
  where
    validate = instanceOf "Resource"
instance encodeResource      :: EncodeJson Resource where encodeJson = encodeJsonWithId
instance decodeResource      :: DecodeJson Resource where decodeJson = decodeJsonWithId
instance showResource        :: Show       Resource where
  show re = show (amount re) <> " " <> show (resourceType re)

amount :: Resource -> Int
amount = unsafeField "amount"

resourceType :: Resource -> ResourceType
resourceType = unsafeField "resourceType"
