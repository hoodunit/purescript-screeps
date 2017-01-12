-- | Corresponds to the Screeps API [RoomObject](http://support.screeps.com/hc/en-us/articles/208435305-RoomObject)
module Screeps.RoomObject where

import Control.Category
import Data.Show

import Screeps.FFI (unsafeField)
import Screeps.Names
import Screeps.RoomPosition.Type (RoomPosition)

foreign import data Room :: *

instance showRoom :: Show Room where
  show = show <<< name

-- | Any `RoomObject` with a location, and room containing it. 
class RoomObject     a

name :: Room -> RoomName
name = unsafeField "name"

foreign import data AnyRoomObject :: *

instance anyRoomObject :: RoomObject AnyRoomObject

room :: forall a. RoomObject a => a -> Room
room = unsafeField "room"

pos :: forall a. RoomObject a => a -> RoomPosition
pos = unsafeField "pos"
