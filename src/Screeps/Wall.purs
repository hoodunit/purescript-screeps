-- | Corresponds to the Screeps API [StructureWall](http://support.screeps.com/hc/en-us/articles/208437125-StructureWall)
module Screeps.Wall where

import Data.Maybe (Maybe)

import Screeps.FFI (unsafeField, instanceOf)
import Screeps.Id
import Screeps.Structure (fromAnyStructure)
import Screeps.Types --(AnyStructure, Wall)

foreign import data Wall       :: *
instance objectWall       ::      RoomObject Wall
instance ownedWall             :: Owned      Wall
instance wallHasId             :: HasId      Wall
  where
    validate = instanceOf "StructureWall"
instance structuralWall        :: Structural Wall
instance structureWall         :: Structure  Wall where
  _structureType _ = structure_wall

ticksToLive :: Wall -> Int
ticksToLive = unsafeField "ticksToLive"

toWall :: AnyStructure -> Maybe Wall
toWall = fromAnyStructure
