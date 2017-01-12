module Screeps.RoomPosition.Type where

import Control.Monad

import Data.Argonaut.Core (jsonEmptyObject)
import Data.Argonaut.Encode
import Data.Argonaut.Encode.Combinators
import Data.Argonaut.Decode
import Data.Argonaut.Decode.Combinators
import Data.Function       (($))
import Data.HeytingAlgebra ((&&))
import Data.Eq             (class Eq, (==))
import Data.Monoid         ((<>))
import Data.Show           (class Show, show)

import Screeps.FFI
import Screeps.Names

foreign import data RoomPosition :: *

foreign import mkRoomPosition :: Int -> Int -> RoomName -> RoomPosition

roomName :: RoomPosition -> RoomName
roomName = unsafeField "roomName"

x :: RoomPosition -> Int
x = unsafeField "x"

y :: RoomPosition -> Int
y = unsafeField "y"

instance showRoomPosition :: Show RoomPosition where
  show pos = show (x pos) <> "," <> show (y pos) <> ":" <> show (roomName pos)

instance eqRoomPosition :: Eq RoomPosition where
  eq a b = x        a == x        b
        && y        a == y        b
        && roomName a == roomName b

instance encodeRoomPosition :: EncodeJson RoomPosition where
  encodeJson aPos = do
       "x"        := x        aPos
    ~> "y"        := y        aPos
    ~> "roomName" := roomName aPos
    ~> jsonEmptyObject

instance decodeRoomPosition :: DecodeJson RoomPosition where
  decodeJson json = do
    obj       <- decodeJson json
    cx        <- obj .? "x"
    cy        <- obj .? "y"
    croomName <- obj .? "roomName"
    pure      $ mkRoomPosition cx cy croomName

