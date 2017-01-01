-- | Corresponds to the Screeps API [StructureRoad](http://support.screeps.com/hc/en-us/articles/207713089-StructureRoad)
module Screeps.Road where

import Data.Maybe (Maybe)

import Screeps.FFI (unsafeField)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types (Road, AnyStructure)

ticksToDecay :: Road -> Int
ticksToDecay = unsafeField "ticksToDecay"

toRoad :: AnyStructure -> Maybe Road
toRoad = fromAnyStructure

