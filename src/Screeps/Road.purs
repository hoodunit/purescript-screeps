-- | Corresponds to the Screeps API [StructureRoad](http://support.screeps.com/hc/en-us/articles/207713089-StructureRoad)
module Screeps.Road where

import Data.Argonaut.Encode.Class (class EncodeJson, encodeJson)
import Data.Argonaut.Decode.Class (class DecodeJson, decodeJson)
import Data.Maybe (Maybe)

import Screeps.FFI (instanceOf)
import Screeps.Decays    ( class Decays )
import Screeps.Id
import Screeps.RoomObject (class RoomObject)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types     ( AnyStructure
                         , class Structure
                         , class Structural
                         , structure_road   )

foreign import data Road :: *
instance objectRoad      :: RoomObject Road
instance structuralRoad  :: Structural Road
instance roadHasId       :: HasId      Road
  where
    validate = instanceOf "StructureRoad"
instance roadDecays      :: Decays     Road
instance structureRoad   :: Structure  Road where
  _structureType _ = structure_road

toRoad :: AnyStructure -> Maybe Road
toRoad = fromAnyStructure

