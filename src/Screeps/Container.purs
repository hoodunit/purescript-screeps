-- | Corresponds to the Screeps API [StructureContainer](http://support.screeps.com/hc/en-us/articles/208435885-StructureContainer)
module Screeps.Container where

import Data.Maybe (Maybe)

import Screeps.Structure (fromAnyStructure)
import Screeps.Types (Container, ResourceType(ResourceType), AnyStructure)
import Screeps.FFI (unsafeField)

foreign import data Store :: *

store :: Container -> Store
store = unsafeField "store"

storeGet :: Container -> ResourceType -> Int
storeGet s (ResourceType res) = unsafeField res (store s)

storeCapacity :: Container -> Int
storeCapacity = unsafeField "storeCapacity"

toContainer :: AnyStructure -> Maybe Container
toContainer = fromAnyStructure
