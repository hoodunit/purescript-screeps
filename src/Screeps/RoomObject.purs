-- | Corresponds to the Screeps API [RoomObject](http://support.screeps.com/hc/en-us/articles/208435305-RoomObject)
module Screeps.RoomObject where

import Screeps.RoomPosition.Type (RoomPosition)
import Screeps.FFI (unsafeField)

foreign import data Room :: *

-- | Any `RoomObject` with a location, and room containing it. 
class RoomObject     a

foreign import data AnyRoomObject :: *

instance anyRoomObject :: RoomObject AnyRoomObject

room :: forall a. RoomObject a => a -> Room
room = unsafeField "room"

pos :: forall a. RoomObject a => a -> RoomPosition
pos = unsafeField "pos"
