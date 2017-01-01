module Screeps.RoomPosition.Type where

import Data.Show (class Show, show)
import Data.Monoid ((<>))
import Screeps.FFI

foreign import data RoomPosition :: *

roomName :: RoomPosition -> String
roomName = unsafeField "roomName"

x :: RoomPosition -> Int
x = unsafeField "x"

y :: RoomPosition -> Int
y = unsafeField "y"

instance showRoomPosition :: Show RoomPosition where
  show pos = show (x pos) <> "," <> show (y pos) <> ":" <> roomName pos

