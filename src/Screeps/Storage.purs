-- | Corresponds to the Screeps API [StructureStorage](http://support.screeps.com/hc/en-us/articles/208436805-StructureStorage)
module Screeps.Storage where

import Data.Maybe (Maybe)

import Screeps.FFI (unsafeField)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types (ResourceType(ResourceType), Storage, AnyStructure)

foreign import data Store :: *

store :: Storage -> Store
store = unsafeField "store"

storeGet :: Storage -> ResourceType -> Int
storeGet s (ResourceType res) = unsafeField res (store s)

storeCapacity :: Storage -> Int
storeCapacity = unsafeField "storeCapacity"

toStorage :: AnyStructure -> Maybe Storage
toStorage = fromAnyStructure
