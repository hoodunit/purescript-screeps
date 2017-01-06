module Screeps.RoomPosition.Type where

import Data.HeytingAlgebra ((&&))
import Data.Eq             (class Eq, (==))
import Data.Monoid         ((<>))
import Data.Show           (class Show, show)

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

instance eqRomPosition :: Eq RoomPosition where
  eq a b = x        a == x        b
        && y        a == y        b
        && roomName a == roomName b

