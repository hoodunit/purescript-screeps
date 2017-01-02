-- | Corresponds to the Screeps API [StructureStorage](http://support.screeps.com/hc/en-us/articles/208436805-StructureStorage)
module Screeps.Storage where

import Data.Maybe (Maybe)

import Screeps.FFI (instanceOf)
import Screeps.Id (class HasId)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types
import Screeps.Stores

foreign import data Storage :: *
instance objectStorage      :: RoomObject Storage
instance ownedStorage       :: Owned      Storage
instance storageHasId       :: HasId      Storage
  where
    validate = instanceOf "StructureStorage"
instance structuralStorage  :: Structural Storage
instance storageStores      :: Stores     Storage
instance structureStorage   :: Structure  Storage where
  _structureType _ = structure_storage

toStorage :: AnyStructure -> Maybe Storage
toStorage = fromAnyStructure
