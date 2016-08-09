-- | Corresponds to the Screeps API [StructureContainer](http://support.screeps.com/hc/en-us/articles/208435885-StructureContainer)
module Screeps.Container where

import Screeps.Types
import Screeps.FFI (unsafeField)

store :: Container -> Store
store = unsafeField "store"

storeGet :: Container -> ResourceType -> Int
storeGet s (ResourceType res) = unsafeField res (store s)

storeCapacity :: Container -> Int
storeCapacity = unsafeField "storeCapacity"
