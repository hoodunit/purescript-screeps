-- | Corresponds to the Screeps API [StructureKeeperLair](http://support.screeps.com/hc/en-us/articles/207712119-StructureKeeperLair)
module Screeps.KeeperLair where

import Data.Maybe (Maybe)

import Screeps.Constants (structure_keeper_lair)
import Screeps.FFI (unsafeField)
import Screeps.Structure (unsafeCast)
import Screeps.Types (KeeperLair, Structure)

ticksToSpawn :: KeeperLair -> Int
ticksToSpawn = unsafeField "ticksToSpawn"

toKeeperLair :: forall a. Structure a -> Maybe KeeperLair
toKeeperLair = unsafeCast structure_keeper_lair
