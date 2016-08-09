-- | Corresponds to the Screeps API [StructureWall](http://support.screeps.com/hc/en-us/articles/208437125-StructureWall)
module Screeps.Wall where

import Data.Maybe (Maybe)

import Screeps.Constants (structure_wall)
import Screeps.FFI (unsafeField)
import Screeps.Structure (unsafeCast)
import Screeps.Types (Structure, Wall)

ticksToLive :: Wall -> Int
ticksToLive = unsafeField "ticksToLive"

toWall :: forall a. Structure a -> Maybe Wall
toWall = unsafeCast structure_wall
