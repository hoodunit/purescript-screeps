-- | Corresponds to the Screeps API [StructureWall](http://support.screeps.com/hc/en-us/articles/208437125-StructureWall)
module Screeps.Wall where

import Data.Maybe (Maybe)

import Screeps.FFI (unsafeField)
import Screeps.Id
import Screeps.Structure (fromAnyStructure)
import Screeps.Types --(AnyStructure, Wall)

foreign import data Wall       :: *
instance objectWall       ::      RoomObject Wall where
instance ownedWall             :: Owned Wall where
instance wallHasId             :: HasId Wall where
instance structuralWall   ::     Structural Wall where
instance structureWall         :: Structure Wall where
  _structureType _ = structure_wall

ticksToLive :: Wall -> Int
ticksToLive = unsafeField "ticksToLive"

toWall :: AnyStructure -> Maybe Wall
toWall = fromAnyStructure
