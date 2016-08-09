-- | Corresponds to the Screeps API [StructureRoad](http://support.screeps.com/hc/en-us/articles/207713089-StructureRoad)
module Screeps.Road where

import Data.Maybe (Maybe)

import Screeps.Constants (structure_road)
import Screeps.FFI (unsafeField)
import Screeps.Structure (unsafeCast)
import Screeps.Types (Road, Structure)

ticksToDecay :: Road -> Int
ticksToDecay = unsafeField "ticksToDecay"

toRoad :: forall a. Structure a -> Maybe Road
toRoad = unsafeCast structure_road
