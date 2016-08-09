module Screeps.Resource where

import Screeps.Types
import Screeps.FFI (unsafeField)

amount :: Resource -> Int
amount = unsafeField "amount"

id :: Resource -> Id Resource
id = unsafeField "id"

resourceType :: Resource -> ResourceType
resourceType = unsafeField "id"
