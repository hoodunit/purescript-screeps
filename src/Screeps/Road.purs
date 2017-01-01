-- | Corresponds to the Screeps API [StructureRoad](http://support.screeps.com/hc/en-us/articles/207713089-StructureRoad)
module Screeps.Road where

import Data.Maybe (Maybe)

import Screeps.Decays    ( class Decays )
import Screeps.Id
import Screeps.Structure (fromAnyStructure)
import Screeps.Types     ( AnyStructure
                         , class Structure
                         , class Structural
                         , class RoomObject
                         , structure_road   )

foreign import data Road :: *
instance objectRoad      :: RoomObject Road
instance structuralRoad  :: Structural Road
instance roadHasId       :: HasId      Road
instance roadDecays      :: Decays     Road
instance structureRoad   :: Structure  Road where
  _structureType _ = structure_road

toRoad :: AnyStructure -> Maybe Road
toRoad = fromAnyStructure

