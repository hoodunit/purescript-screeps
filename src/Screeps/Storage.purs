-- | Corresponds to the Screeps API [StructureStorage](http://support.screeps.com/hc/en-us/articles/208436805-StructureStorage)
module Screeps.Storage where

import Data.Maybe (Maybe)

import Screeps.Constants (structure_storage)
import Screeps.FFI (unsafeField)
import Screeps.Structure (unsafeCast)
import Screeps.Types (ResourceType(ResourceType), Storage, Structure)

foreign import data Store :: Type

store :: Storage -> Store
store = unsafeField "store"

storeGet :: Storage -> ResourceType -> Int
storeGet s (ResourceType res) = unsafeField res (store s)

storeCapacity :: Storage -> Int
storeCapacity = unsafeField "storeCapacity"

toStorage :: forall a. Structure a -> Maybe Storage
toStorage = unsafeCast structure_storage
