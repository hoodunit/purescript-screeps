-- | Corresponds to the Screeps API [StructurePortal](http://support.screeps.com/hc/en-us/articles/208647345-StructurePortal)
module Screeps.Portal where

import Data.Maybe (Maybe)

import Screeps.Constants (structure_portal)
import Screeps.FFI (unsafeField)
import Screeps.Structure (unsafeCast)
import Screeps.Types (Portal, RoomPosition, Structure)

destination :: Portal -> RoomPosition
destination = unsafeField "destination"

ticksToDecay :: Portal -> Int
ticksToDecay = unsafeField "ticksToDecay"

toPortal :: forall a. Structure a -> Maybe Portal
toPortal = unsafeCast structure_portal
