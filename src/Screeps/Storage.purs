-- | Corresponds to the Screeps API [StructureStorage](http://support.screeps.com/hc/en-us/articles/208436805-StructureStorage)
module Screeps.Storage where

import Screeps.Constants (ResourceType(ResourceType))
import Screeps.Types (Storage, Store)
import Screeps.FFI (unsafeField)

store :: Storage -> Store
store = unsafeField "store"

storeGet :: Storage -> ResourceType -> Int
storeGet s (ResourceType res) = unsafeField res (store s)

storeCapacity :: Storage -> Int
storeCapacity = unsafeField "storeCapacity"
