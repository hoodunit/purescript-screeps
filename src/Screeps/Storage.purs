-- | Corresponds to the Screeps API [StructureStorage](http://support.screeps.com/hc/en-us/articles/208436805-StructureStorage)
module Screeps.Storage where

import Data.Argonaut.Encode (class EncodeJson, encodeJson)
import Data.Argonaut.Decode (class DecodeJson, decodeJson)
import Data.Eq
import Data.Maybe           (Maybe)
import Data.Show

import Screeps.Destructible (class Destructible)
import Screeps.FFI (instanceOf)
import Screeps.Id (class HasId, decodeJsonWithId, encodeJsonWithId, eqById)
import Screeps.RoomObject (class RoomObject)
import Screeps.Stores
import Screeps.Structure
import Screeps.Types

foreign import data Storage :: *
instance objectStorage      :: RoomObject Storage
instance ownedStorage       :: Owned      Storage
instance storageHasId       :: HasId      Storage
  where
    validate = instanceOf "StructureStorage"
instance encodeStorage      :: EncodeJson Storage where encodeJson = encodeJsonWithId
instance decodeStorage      :: DecodeJson Storage where decodeJson = decodeJsonWithId
instance structuralStorage  :: Structural Storage
instance storageStores      :: Stores     Storage
instance showStorage        :: Show       Storage where show = showStructure
instance eqStorage          :: Eq         Storage where eq   = eqById
instance structureStorage   :: Structure  Storage where
  _structureType _ = structure_storage
instance destructibleStorage :: Destructible Storage

toStorage :: AnyStructure -> Maybe Storage
toStorage = fromAnyStructure
