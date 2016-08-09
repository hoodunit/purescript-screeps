-- | Corresponds to the Screeps API [RoomObject](http://support.screeps.com/hc/en-us/articles/208435305-RoomObject)
module Screeps.RoomObject where

import Screeps.Types (Room, RoomObject, RoomPosition)
import Screeps.FFI (unsafeField)

room :: forall a. RoomObject a -> Room
room = unsafeField "room"

pos :: forall a. RoomObject a -> RoomPosition
pos = unsafeField "pos"
