module Screeps.Names(RoomName, asRoomName, CreepName, asCreepName) where

import Data.Eq (class Eq)
import Data.Show (class Show)

-- | RoomName allows to enumerate rooms even if they are not active.
newtype RoomName = RoomName String

asRoomName = RoomName

derive newtype instance eqRoomName   :: Eq   RoomName
instance                showRoomName :: Show RoomName where show (RoomName rn) = rn

-- | CreepName allows to enumerate creeps that are yet dead
newtype CreepName = CreepName String

asCreepName = CreepName

derive newtype instance eqCreepName   :: Eq   CreepName
instance                showCreepName :: Show CreepName where show (CreepName rn) = rn

