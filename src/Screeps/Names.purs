module Screeps.Names(RoomName, asRoomName, CreepName, asCreepName) where

import Control.Category((<<<))
import Data.Argonaut.Encode.Class
import Data.Argonaut.Decode.Class
import Data.Eq (class Eq)
import Data.Functor(map)
import Data.Ord (class Ord)
import Data.Show (class Show)

-- | RoomName allows to enumerate rooms even if they are not active.
newtype RoomName = RoomName String

asRoomName :: String -> RoomName
asRoomName = RoomName

derive newtype instance eqRoomName   :: Eq   RoomName
derive newtype instance ordRoomName  :: Ord   RoomName
instance                showRoomName :: Show RoomName where show (RoomName rn) = rn
instance              encodeRoomName :: EncodeJson RoomName where encodeJson      (RoomName rn) = encodeJson rn
instance              decodeRoomName :: DecodeJson RoomName where decodeJson = map RoomName <<< decodeJson

-- | CreepName allows to enumerate creeps that are yet dead
newtype CreepName = CreepName String

asCreepName :: String -> CreepName
asCreepName = CreepName

derive newtype instance eqCreepName   :: Eq   CreepName
derive newtype instance ordCreepName  :: Ord  CreepName
instance                showCreepName :: Show CreepName where show (CreepName rn) = rn
instance              encodeCreepName :: EncodeJson CreepName where encodeJson      (CreepName rn) = encodeJson rn
instance              decodeCreepName :: DecodeJson CreepName where decodeJson = map CreepName <<< decodeJson

