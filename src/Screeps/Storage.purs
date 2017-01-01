-- | Corresponds to the Screeps API [StructureStorage](http://support.screeps.com/hc/en-us/articles/208436805-StructureStorage)
module Screeps.Storage where

import Data.Maybe (Maybe)

import Screeps.FFI (unsafeField)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types --(ResourceType(ResourceType), Storage, AnyStructure)
import Screeps.Stores

foreign import data Storage    :: *
instance objectStorage       ::      RoomObject Storage where
instance ownedStorage          :: Owned Storage where
instance structuralStorage   ::     Structural Storage where
instance storageStores         ::      Stores    Storage where
instance structureStorage      ::      Structure Storage where
  _structureType _ = structure_storage

toStorage :: AnyStructure -> Maybe Storage
toStorage = fromAnyStructure
