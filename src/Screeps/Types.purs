-- | Defines the main types used in the library and the relationships between them.
module Screeps.Types where

import Data.Maybe (Maybe)

foreign import data RawOwnedStructure :: * -> *
foreign import data RawRoomObject :: * -> *
foreign import data RawStructure :: * -> *

type RoomObject a = RawRoomObject a
type Structure a = RoomObject (RawStructure a)
type OwnedStructure a = Structure (RawOwnedStructure a)

foreign import data RawContainer :: *
foreign import data RawController :: *
foreign import data RawExtension :: *
foreign import data RawExtractor :: *
foreign import data RawKeeperLair :: *
foreign import data RawLab :: *
foreign import data RawLink :: *
foreign import data RawNuker :: *
foreign import data RawObserver :: *
foreign import data RawPortal :: *
foreign import data RawPowerBank :: *
foreign import data RawPowerSpawn :: *
foreign import data RawRampart :: *
foreign import data RawRoad :: *
foreign import data RawSpawn :: *
foreign import data RawStorage :: *
foreign import data RawTerminal :: *
foreign import data RawTower :: *
foreign import data RawWall :: *

type Container = Structure RawContainer
type Controller = OwnedStructure RawController
type Extension = OwnedStructure RawExtension
type Extractor = OwnedStructure RawExtractor
type KeeperLair = OwnedStructure RawKeeperLair
type Lab = OwnedStructure RawLab
type Link = OwnedStructure RawLink
type Nuker = OwnedStructure RawNuker
type Observer = OwnedStructure RawObserver
type Portal = OwnedStructure RawPortal
type PowerBank = OwnedStructure RawPowerBank
type PowerSpawn = OwnedStructure RawPowerSpawn
type Rampart = OwnedStructure RawRampart
type Road = OwnedStructure RawRoad
type Spawn = OwnedStructure RawSpawn
type Storage = OwnedStructure RawStorage
type Terminal = OwnedStructure RawTerminal
type Tower = OwnedStructure RawTower
type Wall = OwnedStructure RawWall

foreign import data Room :: *
foreign import data RoomPosition :: *

foreign import data RawCreep :: *

type Creep = RoomObject RawCreep

foreign import data RawConstructionSite :: *
foreign import data RawFlag :: *
foreign import data RawMineral :: *
foreign import data RawNuke :: *
foreign import data RawResource :: *
foreign import data RawSource :: *

type ConstructionSite = RoomObject RawConstructionSite
type Flag = RoomObject RawFlag
type Mineral = RoomObject RawMineral
type Nuke = RoomObject RawNuke
type Resource = RoomObject RawResource
type Source = RoomObject RawSource

foreign import data WorldMap :: *
foreign import data Market :: *
foreign import data Store :: *

foreign import data CreepCargo :: *

type Gcl =
  { level :: Int
  , progress :: Int
  , progressTotal :: Int }

type Cpu =
  { limit :: Int
  , tickLimit :: Int
  , bucket :: Int }

type SpawningInfo =
  { name :: String
  , needTime :: Int
  , remainingTime :: Int }
