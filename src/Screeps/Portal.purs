-- | Corresponds to the Screeps API [StructurePortal](http://support.screeps.com/hc/en-us/articles/208647345-StructurePortal)
module Screeps.Portal where

import Data.Maybe (Maybe)

import Screeps.FFI (unsafeField)
import Screeps.Structure (fromAnyStructure)
import Screeps.Types (Portal, AnyStructure)
import Screeps.RoomPosition.Type (RoomPosition)

destination :: Portal -> RoomPosition
destination = unsafeField "destination"

ticksToDecay :: Portal -> Int
ticksToDecay = unsafeField "ticksToDecay"

toPortal :: AnyStructure -> Maybe Portal
toPortal = fromAnyStructure
