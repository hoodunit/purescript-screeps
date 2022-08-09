-- | Corresponds to the Screeps API [StructureContainer](http://support.screeps.com/hc/en-us/articles/208435885-StructureContainer)
module Screeps.Container where

import Data.Maybe (Maybe)

import Screeps.Structure (unsafeCast)
import Screeps.Constants (structure_container)
import Screeps.Types (Container, ResourceType(ResourceType), Structure)
import Screeps.FFI (unsafeField)

foreign import data Store :: Type

store :: Container -> Store
store = unsafeField "store"

storeGet :: Container -> ResourceType -> Int
storeGet s (ResourceType res) = unsafeField res (store s)

storeCapacity :: Container -> Int
storeCapacity = unsafeField "storeCapacity"

toContainer :: forall a. Structure a -> Maybe Container
toContainer = unsafeCast structure_container
