module Screeps.KeeperLair where

import Screeps.Types (KeeperLair)
import Screeps.FFI (unsafeField)

ticksToSpawn :: KeeperLair -> Int
ticksToSpawn = unsafeField "ticksToSpawn"
