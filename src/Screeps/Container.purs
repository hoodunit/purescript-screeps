-- | Corresponds to the Screeps API [StructureContainer](http://support.screeps.com/hc/en-us/articles/208435885-StructureContainer)
module Screeps.Container where

import Data.Argonaut.Encode.Class (class EncodeJson, encodeJson)
import Data.Argonaut.Decode.Class (class DecodeJson, decodeJson)
import Data.Maybe         (Maybe)
import Data.Show          (class Show)

import Screeps.FFI        (instanceOf)
import Screeps.Id         (class HasId, decodeJsonWithId, encodeJsonWithId)
import Screeps.RoomObject (class RoomObject)
import Screeps.Structure
import Screeps.Stores     (class Stores)

foreign import data Container :: *

instance objectContainer      :: RoomObject Container
instance containerHasId       :: HasId      Container where validate = instanceOf "StructureContainer"
instance encodeContainer      :: EncodeJson Container where encodeJson = encodeJsonWithId
instance decodeContainer      :: DecodeJson Container where decodeJson = decodeJsonWithId
instance structuralContainer  :: Structural Container
instance storeInContainer     :: Stores     Container
instance structureContainer   :: Structure  Container where
  _structureType _ = structure_container
instance showContainer        :: Show       Container where show = showStructure

toContainer :: AnyStructure -> Maybe Container
toContainer  = fromAnyStructure

