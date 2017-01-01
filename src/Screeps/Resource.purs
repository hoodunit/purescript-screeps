-- | Corresponds to the Screeps API [Resource](http://support.screeps.com/hc/en-us/articles/203016362-Resource)
module Screeps.Resource where

import Screeps.Types (Id, class RoomObject, ResourceType)
import Screeps.FFI (unsafeField)

foreign import data Resource :: *
instance objectResource      :: RoomObject Resource

amount :: Resource -> Int
amount = unsafeField "amount"

id :: Resource -> Id Resource
id = unsafeField "id"

resourceType :: Resource -> ResourceType
resourceType = unsafeField "id"
