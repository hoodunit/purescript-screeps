module Screeps.Storage where

import Screeps.Types
import Screeps.FFI (unsafeField)

store :: Storage -> Store
store = unsafeField "store"

storeGet :: Storage -> ResourceType -> Int
storeGet s (ResourceType res) = unsafeField res (store s)

storeCapacity :: Storage -> Int
storeCapacity = unsafeField "storeCapacity"
