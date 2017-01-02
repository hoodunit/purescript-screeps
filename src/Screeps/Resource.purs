-- | Corresponds to the Screeps API [Resource](http://support.screeps.com/hc/en-us/articles/203016362-Resource)
module Screeps.Resource where

import Screeps.Id (class HasId)
import Screeps.Types (class RoomObject, ResourceType)
import Screeps.FFI (unsafeField, instanceOf)

foreign import data Resource :: *
instance objectResource      :: RoomObject Resource
instance resourceHasId       :: HasId      Resource
  where
    validate = instanceOf "Resource"

amount :: Resource -> Int
amount = unsafeField "amount"

resourceType :: Resource -> ResourceType
resourceType = unsafeField "id"
