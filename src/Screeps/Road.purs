-- | Corresponds to the Screeps API [StructureRoad](http://support.screeps.com/hc/en-us/articles/207713089-StructureRoad)
module Screeps.Road where

import Data.Maybe (Maybe)

import Screeps.Structure (fromAnyStructure)
import Screeps.Types     ( AnyStructure
                         , class Structure
                         , class Structural
                         , class RoomObject
                         , structure_road   )
import Screeps.Decays    ( class Decays )

foreign import data Road       :: *
instance objectRoad       ::      RoomObject Road where
instance structuralRoad   ::     Structural Road where
instance roadDecays       :: Decays Road where
instance structureRoad         ::      Structure Road where
  _structureType _ = structure_road

toRoad :: AnyStructure -> Maybe Road
toRoad = fromAnyStructure

