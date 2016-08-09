-- | Corresponds to the Screeps API [StructureKeeperLair](http://support.screeps.com/hc/en-us/articles/207712119-StructureKeeperLair)
module Screeps.KeeperLair where

import Screeps.Types (KeeperLair)
import Screeps.FFI (unsafeField)

ticksToSpawn :: KeeperLair -> Int
ticksToSpawn = unsafeField "ticksToSpawn"
