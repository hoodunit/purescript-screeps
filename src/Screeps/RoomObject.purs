module Screeps.RoomObject where

import Screeps.Types
import Screeps.FFI (unsafeField)

room :: forall a. RoomObject a -> Room
room = unsafeField "room"

pos :: forall a. RoomObject a -> RoomPosition
pos = unsafeField "pos"
