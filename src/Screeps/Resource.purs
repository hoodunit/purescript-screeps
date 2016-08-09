-- | Corresponds to the Screeps API [Resource](http://support.screeps.com/hc/en-us/articles/203016362-Resource)
module Screeps.Resource where

import Screeps.Types (Id, Resource, ResourceType)
import Screeps.FFI (unsafeField)

amount :: Resource -> Int
amount = unsafeField "amount"

id :: Resource -> Id Resource
id = unsafeField "id"

resourceType :: Resource -> ResourceType
resourceType = unsafeField "id"
