-- | Corresponds to the Screeps API [StructureKeeperLair](http://support.screeps.com/hc/en-us/articles/207712119-StructureKeeperLair)
module Screeps.KeeperLair where

import Data.Maybe (Maybe)

import Screeps.FFI (unsafeField)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types -- (KeeperLair, AnyStructure)

foreign import data KeeperLair :: *
instance objectKeeperLair       ::      RoomObject KeeperLair where
instance ownedKeeperLair       :: Owned KeeperLair where -- TODO: check it is?
instance structuralKeeperLair   ::     Structural KeeperLair where
instance structureKeeperLair   ::      Structure KeeperLair where
  _structureType _ = structure_keeper_lair

ticksToSpawn :: KeeperLair -> Int
ticksToSpawn = unsafeField "ticksToSpawn"

toKeeperLair :: AnyStructure -> Maybe KeeperLair
toKeeperLair = fromAnyStructure
